//
//  PortfolioView.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 26.05.2023.
//

import SwiftUI

struct PortfolioView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    @State private var quantityText: String = ""
    @State private var showCheckmark: Bool = false
    
    @Binding var showPortfolioModal: Bool
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 0){
                    SearchBarView(searchText: $vm.searchText)
                    coinLogoList
                    
                    if selectedCoin != nil {
                        portfolioInputSection
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(showPortfolioModal: $showPortfolioModal)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    trailingNavBarButtons
                }
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView(showPortfolioModal: .constant(true))
            .preferredColorScheme(.dark)
            .environmentObject(dev.homeVM)
    }
}

extension PortfolioView {
    private var coinLogoList: some View{
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHStack(spacing: 10) {
                ForEach(vm.allCoins){ coin in
                    CoinLogoView(coin: coin)
                        .frame(width: 75)
                        .padding(4)
                        .onTapGesture{
                            withAnimation(.easeIn){
                            selectedCoin = coin
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(selectedCoin?.id == coin.id ? Color.theme.green : Color.clear,
                                        lineWidth: 1.0)
                        )
                }
            }
            .frame(height: 120)
            .padding(.leading)
        })
    }
    
    
    private func getCurrentValue() -> Double{
        if let quantity = Double(quantityText) {
            return quantity * (selectedCoin?.currentPrice ?? 0)
        }
        return 0
    }
    
    private var portfolioInputSection: some View{
    VStack(spacing: 20) {
        HStack{
            Text("The current price of \(selectedCoin?.symbol.uppercased() ?? ""):")
            Spacer()
            Text(selectedCoin?.currentPrice.asCurrenceWith6Decimals() ?? "")
        }
        Divider()
        HStack{
            Text("Amount holding: ")
            Spacer()
            TextField("EX: 1.4", text: $quantityText)
                .multilineTextAlignment(.trailing)
                .keyboardType(.decimalPad)
        }
        Divider()
            HStack{
                Text("Current value:")
                Spacer()
                Text(getCurrentValue().asCurrenceWith2Decimals())
            }
        
    }
    .animation(.none)
    .padding()
    .font(.headline)
    }
    
    private var trailingNavBarButtons: some View {
        HStack(spacing: 10){
            Image(systemName: "checkmark")
                .opacity(showCheckmark ? 1.0 : 0.0)
            
            Button (action:{
                saveButtonPressed()
            }, label: {
                Text("save".uppercased())
            })
                .opacity(
                    (selectedCoin != nil  && selectedCoin?.currentHoldings != Double(quantityText)) ? 1.0 : 0.0
                )
        }
        .font(.headline )
    }
    
    private func saveButtonPressed() {
        
        guard let coin = selectedCoin else  { return }
        
        // save to portfolio
        
        // show checkmark
        withAnimation(.easeIn) {
            showCheckmark = true
            removeSelectedCoin()
        }
        
        //hide kwyboard
        UIApplication.shared.endEditind()
        
        //hide checkmark
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(.easeIn){
                showCheckmark = false
            }
        }
    }
    
    private func removeSelectedCoin() {
        selectedCoin = nil
        vm.searchText = ""
    }
    
}

