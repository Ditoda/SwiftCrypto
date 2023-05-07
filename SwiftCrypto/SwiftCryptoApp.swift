//
//  SwiftCryptoApp.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 30.04.2023.
//

import SwiftUI

@main
struct SwiftCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
