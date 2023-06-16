//
//  String.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 15.06.2023.
//

import Foundation

extension String{
    
    var removingHTMLOccurances: String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
