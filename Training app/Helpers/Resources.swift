//
//  Resources.swift
//  Training app
//
//  Created by Артём Тюрморезов on 21.10.2022.
//

import Foundation
import UIKit

enum Resources {
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return UIImage(named: "session_tab")
                case .progress: return UIImage(named: "progress_tab")
                case .settings: return UIImage(named: "settings_tab")
                }
            }
        }
        
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "addButton")
        }
        
        
    }
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
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
         
        }
        enum Overview {
            static var allWorkoutsButton = "All Workouts"
        }
        enum NavBar {
            static var overview = "Today"
        }

        
        
        
        
        
       
    }

    enum Fonts {
        static func helveticaregular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}
