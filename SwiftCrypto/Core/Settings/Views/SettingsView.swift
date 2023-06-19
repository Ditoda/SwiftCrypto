//
//  SettingsView.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 16.06.2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURl = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let coingeckoURL = URL(string: "https://www.coingeko.com")!
    let personalURL = URL(string: "https://github.com/Ditoda")!
    
    @Binding var showSettings: Bool
    var body: some View {
        NavigationView{
            ZStack{
              //Background
                Color.theme.background.ignoresSafeArea()
                // Content
                List{
                    swiftfulthinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline  )
            .accentColor(.blue)
            .navigationTitle("Settings ")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(showPortfolioModal: $showSettings)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSettings: .constant(true))
    }
}

extension SettingsView{
    private var swiftfulthinkingSection: some View{
        Section(header: Text("SwiftFull Thinking")) {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @Swiftfulthinking course on youtube. It uses MVVM Architecture, Combine, CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                
            }
            .padding(.vertical)
            Link("Subscribe on Youtube 👽", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
            
        }
    }
    
    private var coinGeckoSection: some View{
        Section(header: Text("Coin Geko")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from coinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                
            }
            .padding(.vertical)
            Link("Visit CoinGecko 📊", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View{
        Section(header: Text("Developer")) {
            VStack(alignment: .leading){
                Image("portfolio-photo")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Sergey Gerasimov. It uses SwiftUI and it is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                
            }
            .padding(.vertical)
            Link("Visit Website 😎", destination: personalURL)
        }
    }
    
    private var applicationSection: some View{
        Section(header: Text("Application")) {
            Link("Terms of Swervice", destination: defaultURl)
            Link("Privacy Policy", destination: defaultURl)
            Link("Company Website", destination: defaultURl)
            Link("Learn More", destination: defaultURl)
        }
    }
}

