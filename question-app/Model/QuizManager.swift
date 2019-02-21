//
//  QuizManager.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 19.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import Foundation

class QuizManager {
    
    var questions = QuestionGenerator.getQuizQuestion()
    static var currentIndex = 0
    static var score = 0
    
    //return current question
    func getCurrentQuestion() -> Question {
        return questions[QuizManager.currentIndex]
    }
    
}
