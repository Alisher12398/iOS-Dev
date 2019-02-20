//
//  QuestionGenerator.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 19.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import Foundation

class QuestionGenerator {
    
    static func getQuizQuestion() -> [Question] {
        
        var questions = [Question]()
        
        questions.append(Question.init(text: "Приставка Кило обозначает:", variantA: "10^3", variantB: "10^5", variantC: "100", variantD: "10^(-3)", answer: 1))
        
        questions.append(Question.init(text: "Сколько байт в 20 килобайтах?", variantA: "20000", variantB: "160", variantC: "20480", variantD: "2*10^4", answer: 3))
        
        questions.append(Question.init(text: "Выберите приставку, обозначающую самую малую величину среди перечисленных:", variantA: "Мили", variantB: "Санти", variantC: "Пета", variantD: "Пико", answer: 4))
        
        questions.append(Question.init(text: "10^(-9) соответствует приставке:", variantA: "Нано", variantB: "Микро", variantC: "Мили", variantD: "Санти", answer: 1))
        
        questions.append(Question.init(text: "101 в двоичной системе исчисления при переводе в десятичную будет равно:", variantA: "2", variantB: "5", variantC: "1", variantD: "3", answer: 2))
        
        
        return questions
    }
    
}
