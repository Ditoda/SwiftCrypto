//
//  Color.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 30.04.2023.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let red = Color("RedColor")
    let green = Color("GreenColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct ColorTheme2{
    let accent = Color(UIColor.FlatColor.Red.Cinnabar)
    let background = Color(UIColor.FlatColor.Blue.Chambray)
    let red = Color(UIColor.FlatColor.Green.Fern)
    let green = Color(UIColor.FlatColor.Red.WellRead)
    let secondaryText = Color(UIColor.FlatColor.Gray.AlmondFrost)
}

struct LaunchTheme{
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb:Int) {
        self.init(red:(rgb >> 16) & 0xff, green:(rgb >> 8) & 0xff, blue: rgb & 0xff)
    }
}


extension UIColor {
    struct FlatColor {
        struct Green {
            static let Fern = UIColor(rgb: 0x6ABB72)
            static let MountainMeadow = UIColor(rgb: 0x3ABB9D)
            static let ChateauGreen = UIColor(rgb: 0x4DA664)
            static let PersianGreen = UIColor(rgb: 0x2CA786)
        }
        
        struct Blue {
            static let PictonBlue = UIColor(rgb: 0x5CADCF)
            static let Mariner = UIColor(rgb: 0x3585C5)
            static let CuriousBlue = UIColor(rgb: 0x4590B6)
            static let Denim = UIColor(rgb: 0x2F6CAD)
            static let Chambray = UIColor(rgb: 0x485675)
            static let BlueWhale = UIColor(rgb: 0x29334D)
        }
        
        struct Violet {
            static let Wisteria = UIColor(rgb: 0x9069B5)
            static let BlueGem = UIColor(rgb: 0x533D7F)
        }
        
        struct Yellow {
            static let Energy = UIColor(rgb: 0xF2D46F)
            static let Turbo = UIColor(rgb: 0xF7C23E)
        }
        
        struct Orange {
            static let NeonCarrot = UIColor(rgb: 0xF79E3D)
            static let Sun = UIColor(rgb: 0xEE7841)
        }
        
        struct Red {
            static let TerraCotta = UIColor(rgb: 0xE66B5B)
            static let Valencia = UIColor(rgb: 0xCC4846)
            static let Cinnabar = UIColor(rgb: 0xDC5047)
            static let WellRead = UIColor(rgb: 0xB33234)
        }
        
        struct Gray {
            static let AlmondFrost = UIColor(rgb: 0xA28F85)
            static let WhiteSmoke = UIColor(rgb: 0xEFEFEF)
            static let Iron = UIColor(rgb: 0xD1D5D8)
            static let IronGray = UIColor(rgb: 0x75706B)
        }
    }
}
