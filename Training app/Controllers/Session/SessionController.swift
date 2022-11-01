//
//  SessionController.swift
//  Training app
//
//  Created by Артём Тюрморезов on 24.10.2022.
//

import Foundation
import UIKit

class SessionController: BaseController {
    private let timerView: TimerView = {
        let view = TimerView()
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }

}

extension SessionController {
    override func addViews() {
        super.addViews()
        view.addView(timerView)
        
        NSLayoutConstraint.activate([
        
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
