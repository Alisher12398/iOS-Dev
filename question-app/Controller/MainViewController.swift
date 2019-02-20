//
//  MainViewController.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 19.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    
    var manager = QuizManager()
    
    var currentAnswer = 0
    
    @IBAction func answerButtonTapped(_ sender : UIButton){
        let question = manager.getCurrentQuestion()
        changeColor(answer: question.answer)
    }
    
    func changeColor(answer : Int){
        answer1Button.backgroundColor = UIColor.red
        answer2Button.backgroundColor = UIColor.red
        answer3Button.backgroundColor = UIColor.red
        answer4Button.backgroundColor = UIColor.red
        
        switch answer {
        case 1:
            answer1Button.backgroundColor = UIColor.green
        case 2:
            answer2Button.backgroundColor = UIColor.green
        case 3:
            answer3Button.backgroundColor = UIColor.green
        case 4:
            answer4Button.backgroundColor = UIColor.green
        default:
            print("Error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showQuestion()
    }
    
    func showQuestion() {
        
        let question = manager.getCurrentQuestion()
        
        questionText.text = question.text
        
        answer1Button.setTitle(question.variantA, for: .normal)
        answer2Button.setTitle(question.variantB, for: .normal)
        answer3Button.setTitle(question.variantC, for: .normal)
        answer4Button.setTitle(question.variantD, for: .normal)
    }
    
    
}

