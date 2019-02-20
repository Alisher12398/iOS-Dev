//
//  MenuController.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 20.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    
    @IBOutlet weak var scoreCount: UILabel!
    
    @IBAction func clearScore(_ sender: UIButton) {
        QuizManager.score=0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreCount.text = "Счет: \(QuizManager.score)/10"
    }
    
}
