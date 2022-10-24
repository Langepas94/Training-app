//
//  SecondaryButton.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

final class SecondaryButton: UIButton {
    
    private let label = UILabel()
    private let arrowView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
}

private extension SecondaryButton {
    func addViews() {
        addSubview(label)
        addSubview(arrowView)
        
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            arrowView.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            arrowView.heightAnchor.constraint(equalToConstant: 5),
            arrowView.widthAnchor.constraint(equalToConstant: 10),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: arrowView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
        
    }
    
    func configure() {
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = 14
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resources.Colors.active
        label.textAlignment = .center
        label.font = Resources.Fonts.helveticaregular(with: 15)
        makeSystemButton(self)
        arrowView.translatesAutoresizingMaskIntoConstraints = false
        arrowView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        arrowView.tintColor = Resources.Colors.active
    }
}
