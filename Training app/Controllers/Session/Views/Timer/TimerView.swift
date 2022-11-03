//
//  Timer.swift
//  Training app
//
//  Created by Артём Тюрморезов on 01.11.2022.
//

import Foundation
import UIKit

final class TimerView: WABaseInfoView {
    
    private let elapsedTimeLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Session.elapsedTime
        label.font = Resources.Fonts.helveticaregular(with: 14)
        label.textColor = Resources.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    private let elapsedTimeValueLabel: UILabel = {
        let label = UILabel()
        label.text = "16:15"
        label.font = Resources.Fonts.helveticaregular(with: 46)
        label.textColor = Resources.Colors.titleGray
        label.textAlignment = .center
        return label
    }()
    private let remainigTimeLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Session.remainingTime
        label.font = Resources.Fonts.helveticaregular(with: 13)
        label.textColor = Resources.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    private let remainigTimeValueLabel: UILabel = {
        let label = UILabel()
        label.text = "22:15"
        label.font = Resources.Fonts.helveticaregular(with: 13)
        label.textColor = Resources.Colors.titleGray
        label.textAlignment = .center
        return label
    }()
    
    private let timerStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 10
        return view
    }()
    
    private let progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(0.2)
        return view
    }()
}

extension TimerView {
   override func setupViews(){
       super.setupViews()
       addView(progressView)
       addView(timerStackView)
       
       [
        elapsedTimeLabel,
        elapsedTimeValueLabel,
        remainigTimeLabel,
        remainigTimeValueLabel
       ].forEach {
           timerStackView.addArrangedSubview($0)
       }
       
    }
    
    override func constraintViews(){
        super.constraintViews()
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
            progressView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            
            timerStackView.centerYAnchor.constraint(equalTo: progressView.centerYAnchor),
            timerStackView.centerXAnchor.constraint(equalTo: progressView.centerXAnchor)
        
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        
    }
}
