//
//  MainViewController.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 19.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    let greenColor : UIColor = UIColor.green
    let redColor : UIColor = UIColor.red
    let defaultColor : UIColor = UIColor.lightGray
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var scoreCount: UILabel!
    var manager = QuizManager()
    
    @IBAction func answerButtonTapped(_ sender : UIButton){
        changeColor(answer: manager.getCurrentQuestion().answer)
        if manager.getCurrentQuestion().answer == sender.tag{
            QuizManager.score += 1
            scoreCount.text = String(QuizManager.score)
        }
    }
    
    @IBAction func nextQuestionButtonTapped(_ sender : UIButton){
        QuizManager.currentIndex += 1
        answer1Button.backgroundColor = defaultColor
        answer2Button.backgroundColor = defaultColor
        answer3Button.backgroundColor = defaultColor
        answer4Button.backgroundColor = defaultColor
        showQuestion()
    }
    
    func changeColor(answer : Int){
        answer1Button.backgroundColor = redColor
        answer2Button.backgroundColor = redColor
        answer3Button.backgroundColor = redColor
        answer4Button.backgroundColor = redColor
        
        switch answer {
        case 1:
            answer1Button.backgroundColor = greenColor
        case 2:
            answer2Button.backgroundColor = greenColor
        case 3:
            answer3Button.backgroundColor = greenColor
        case 4:
            answer4Button.backgroundColor = greenColor
        default:
            print("Error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

