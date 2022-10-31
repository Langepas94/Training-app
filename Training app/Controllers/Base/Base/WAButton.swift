//
//  SecondaryButton.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    private var type: WAButtonType = .primary

    
    private let label: UILabel = {
        let lable = UILabel()
        
        lable.textAlignment = .center

        return lable
    }()
    private let iconView: UIImageView = {
        let icon = UIImageView()

        icon.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)

        return icon
    }()
    
    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        addViews()
        layoutViews()
        configure()
    }
    

    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)

        addViews()
        layoutViews()
        configure()
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
}

private extension WAButton {
    func addViews() {
        addView(label)
        addView(iconView)
        
    }
    
    func layoutViews() {
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2)
        ])
        
    }
    
    func configure() {
        switch type {
        case .primary:
            label.textColor = Resources.Colors.inactive
            iconView.tintColor = Resources.Colors.inactive
            label.font = Resources.Fonts.helveticaregular(with: 13)
        case .secondary:
            backgroundColor = Resources.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = Resources.Colors.active
            iconView.tintColor = Resources.Colors.active
            label.font = Resources.Fonts.helveticaregular(with: 15)
        }
        iconView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        makeSystemButton(self)

    }
}
