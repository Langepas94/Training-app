//
//  BaseController.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}
// objc позволяет переопределить их в дочерних
@objc extension BaseController {
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    
    }
    
    func navBarLeftButtonHandler() {
        
    }
    
    func navBarRightButtonHandler() {
        
    }
    
}

extension BaseController {
    func addNavBarButton(at position:NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaregular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
