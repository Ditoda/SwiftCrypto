//
//  HapticManager.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 08.06.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
