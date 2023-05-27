//
//  XMarkButton.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 26.05.2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Binding var showPortfolioModal: Bool
//    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
//
            self.showPortfolioModal.toggle()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(showPortfolioModal: .constant(true))
    }
}
