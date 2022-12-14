//
//  UIView + extension.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        addSubview(separator)
    }
    func makeSystemButton(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [.touchDown, .touchDragInside])
        button.addTarget(self, action: #selector(handleOut), for: [.touchDragOutside, .touchUpInside, .touchUpOutside, .touchDragExit, .touchCancel])
    }
    
    @objc func handleIn(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    @objc func handleOut(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
    func addView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
