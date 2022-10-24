//
//  Resources.swift
//  Training app
//
//  Created by Артём Тюрморезов on 21.10.2022.
//

import Foundation
import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#447BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
        static var background = UIColor(hexString: "#F8F9F9")
        static var secondary = UIColor(hexString: "#F0F3FF")
    }
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        enum Overview {
            static var allWorkoutsButton = "All Workouts"
        }
    }
        enum Images {
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var settings = UIImage(named: "settings_tab")
            
            enum Common {
                static var downArrow = UIImage(named: "down_arrow")
            }
            
           
        }
    
   
    
   
    
    enum Fonts {
        static func helveticaregular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    }

