//
//  DetailViewModel.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 11.06.2023.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject{
    
    private let coinDetailDataService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel){
        self.coinDetailDataService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailDataService.$coinDetails
            .sink{ (returnedCoinDetails) in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
    
}
