//
//  HomeViewModel.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 03.05.2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    
    @Published var  statistics: [StatisticModel] = [
        StatisticModel (title: "Title", value: "Value", percentageChange: 1),
        StatisticModel (title: "Title", value: "Value"),
        StatisticModel (title: "Title", value: "Value"),
        StatisticModel (title: "Title", value: "Value", percentageChange: -7)
    ]
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancelleables = Set<AnyCancellable>()
    
    init(){
        addSubscribers()
        }
    func addSubscribers(){
        
        // updates allCoins
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self](returnedCoin) in
                self?.allCoins = returnedCoin
            }
            .store(in: &cancelleables)
    }
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else{
            return coins
        }
        
        let lowercasedText = text.lowercased()
        
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
    }
}
}
