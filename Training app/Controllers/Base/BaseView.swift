//
//  BaseView.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configureView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    
    func addViews(){
        
    }
    
    func layoutViews(){
        
    }
    
    func configureView() {
        
    }
}
