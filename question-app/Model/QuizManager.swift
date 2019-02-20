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
    var currentIndex = 0
    var score = 0
    
    func getCurrentQuestion() -> Question {
        return questions[currentIndex]
    }
    
}
