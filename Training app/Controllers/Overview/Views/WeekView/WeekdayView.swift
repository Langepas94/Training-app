//
//  WeekdayView.swift
//  Training app
//
//  Created by Артём Тюрморезов on 27.10.2022.
//

import Foundation
import UIKit

extension WeekView {
    
    final class WeekdayView: BaseView {
        private var nameLabel = UILabel()
        private var dateLabel = UILabel()
        private var stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            
            let startWeekDate = Date().startOfWeek
            let currentDay = startWeekDate.goForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            let isToday = currentDay.stripTime() == Date().stripTime()
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.background
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.Colors.inactive
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inactive
        }
    }
}

extension WeekView.WeekdayView {
    override func setupViews() {
        super.setupViews()
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
//            navBar.heightAnchor.constraint(equalToConstant: 113)

        ])
    }
    
    override func configureView() {
        super.configureView()
        backgroundColor = .red
        layer.cornerRadius = 5
        layer.masksToBounds = true
        nameLabel.font = Resources.Fonts.helveticaregular(with: 9)
        nameLabel.textAlignment = .center
        dateLabel.font = Resources.Fonts.helveticaregular(with: 15)
        dateLabel.textAlignment = .center
        stackView.spacing = 3
        stackView.axis = .vertical

    }
}
