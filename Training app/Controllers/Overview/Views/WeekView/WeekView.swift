//
//  WeekView.swift
//  Training app
//
//  Created by Артём Тюрморезов on 27.10.2022.
//

import Foundation
import UIKit

final class WeekView: BaseView {
    private let calendar = Calendar.current
    private var stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        addView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
//            navBar.heightAnchor.constraint(equalToConstant: 113)

        ])
    }
    
    override func configureView() {
        super.configureView()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sunDay = weekdays.remove(at: 0)
            weekdays.append(sunDay)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
