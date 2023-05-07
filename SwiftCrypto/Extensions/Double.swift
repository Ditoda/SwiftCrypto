//
//  Double.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 03.05.2023.
//

import Foundation

extension Double{
    /// Converts a double into a currency with 2 decimal dplaces
    /// ```
    ///Convert 12.3456 to $12.34
    /// ```
    
    private var currencyFormatter2: NumberFormatter{
        let formatter = NumberFormatter()
            formatter.usesGroupingSeparator = true
            formatter.numberStyle = .currency
//        formatter.locale = .current // <- default value
//        formatter.currencyCode = "usd" // <- change currency
        formatter.currencySymbol = "₽" // <- change currncy symbol
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
            return formatter
    }
    
    /// Converts a double into a currency as a String with 2-6 decimal dplaces
    /// ```
    ///Convert 12.3456 to "$12.34"
    /// ```

    func asCurrenceWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double into a currency with 2-6 decimal dplaces
    /// ```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.3456
    ///Convert 1234.56 to $1,234.56
    ///Convert 0.123456 to $0.123456
    /// ```
    
    private var currencyFormatter6: NumberFormatter{
        let formatter = NumberFormatter()
            formatter.usesGroupingSeparator = true
            formatter.numberStyle = .currency
//        formatter.locale = .current // <- default value
//        formatter.currencyCode = "usd" // <- change currency
//        formatter.currencySymbol = "$" // <- change currncy symbol
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 6
            return formatter
    }
    
    /// Converts a double into a currency as a String with 2-6 decimal dplaces
    /// ```
    ///Convert 1234.56 to "$1,234.56"
    ///Convert 12.3456 to "$12.3456"
    ///Convert 1234.56 to "$1,234.56"
    ///Convert 0.123456 to "$0.123456"
    /// ```

    func asCurrenceWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double into string representation
    /// ```
    ///Convert 1.2345 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a double into string representation with percent symbol
    /// ```
    ///Convert 1.2345 to "1.23%"
    /// ```
    
    func asPercentString() -> String{
        return asNumberString() + "%"
    }
}
