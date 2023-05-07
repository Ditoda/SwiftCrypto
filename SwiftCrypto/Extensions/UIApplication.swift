//
//  UIApplication.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 07.05.2023.
//

import Foundation
import SwiftUI

extension UIApplication{
    
    func endEditind(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
