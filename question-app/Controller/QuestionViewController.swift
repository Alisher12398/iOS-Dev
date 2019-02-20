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
    @IBOutlet weak var currentScoreLabel: UILabel!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var scoreCount: UILabel!
    var manager = QuizManager()
    var currentScore = 0
    
    @IBAction func answerButtonTapped(_ sender : UIButton){
        
        changeColor(answer: manager.getCurrentQuestion().answer)
        
        switch sender.tag {
        case 1:
            answer1Button.alpha = 1.0
            break
        case 2:
            answer2Button.alpha = 1.0
            break
        case 3:
            answer3Button.alpha = 1.0
            break
        case 4:
            answer4Button.alpha = 1.0
            break
            
        default:
            print()
        }
        
        if manager.getCurrentQuestion().answer == sender.tag {
            currentScore += 1
            currentScoreLabel.text = String(currentScore)
        }
        
    }
    
    @IBAction func nextQuestionButtonTapped(_ sender : UIButton){
        
        if QuizManager.currentIndex == 9 {
            QuizManager.currentIndex = 0
            QuizManager.score = currentScore
            performSegue(withIdentifier: "questionsEnd", sender: UIButton.self)
        } else {
            
            QuizManager.currentIndex += 1
            answer1Button.backgroundColor = defaultColor
            answer2Button.backgroundColor = defaultColor
            answer3Button.backgroundColor = defaultColor
            answer4Button.backgroundColor = defaultColor
            answer1Button.alpha = 1.0
            answer2Button.alpha = 1.0
            answer3Button.alpha = 1.0
            answer4Button.alpha = 1.0
            showQuestion()
            
        }
       
        
    }
    
    func changeColor(answer : Int){
        answer1Button.backgroundColor = redColor
        answer2Button.backgroundColor = redColor
        answer3Button.backgroundColor = redColor
        answer4Button.backgroundColor = redColor
        
        answer1Button.alpha = 0.5
        answer2Button.alpha = 0.5
        answer3Button.alpha = 0.5
        answer4Button.alpha = 0.5
        
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

