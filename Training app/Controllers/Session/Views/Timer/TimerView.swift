//
//  Timer.swift
//  Training app
//
//  Created by Артём Тюрморезов on 01.11.2022.
//

import Foundation
import UIKit

final class TimerView: WABaseInfoView {
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
       
    }
    
    override func constraintViews(){
        super.constraintViews()
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        
    }
}
