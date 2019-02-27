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
        
        //add questions to array

        questions.append(Question.init(text: "Приставка Кило обозначает:", variantA: "10^3", variantB: "10^5", variantC: "100", variantD: "10^(-3)", answer: 1))
        
        questions.append(Question.init(text: "Сколько байт в 20 килобайтах?", variantA: "20000", variantB: "160", variantC: "20480", variantD: "2*10^4", answer: 3))
        
        questions.append(Question.init(text: "Выберите приставку, обозначающую самую малую величину среди перечисленных:", variantA: "Мили", variantB: "Санти", variantC: "Пета", variantD: "Пико", answer: 4))
        
        questions.append(Question.init(text: "10^(-9) соответствует приставке:", variantA: "Нано", variantB: "Микро", variantC: "Мили", variantD: "Санти", answer: 1))
        
        questions.append(Question.init(text: "101 в двоичной системе исчисления при переводе в десятичную будет равно:", variantA: "2", variantB: "5", variantC: "1", variantD: "3", answer: 2))
        
        questions.append(Question.init(text: "Выберите приставку, обозначающую самую наибольшую величину среди перечисленных:", variantA: "Мили", variantB: "Санти", variantC: "Пета", variantD: "Мега", answer: 3))
        
        questions.append(Question.init(text: "12 в восьмеричной системе исчисления при переводе в десятичную будет равно:", variantA: "2", variantB: "8", variantC: "10", variantD: "0", answer: 3))
        
        questions.append(Question.init(text: "Сколько байтов в 8 Байтах?", variantA: "8", variantB: "64", variantC: "2", variantD: "32", answer: 1))
        
        questions.append(Question.init(text: "Не относится к приставкам с положительным множителем:", variantA: "Пико", variantB: "Мега", variantC: "Гекто", variantD: "Дека", answer: 1))
        
        questions.append(Question.init(text: "С помощью одного байта можно закодировать:", variantA: "целое число от 0 до 1024", variantB: "целое число от 0 до 1000", variantC: "целое число от 0 до 10^3", variantD: "целое число от 0 до 255", answer: 4))
        
        return questions
    }
    
}
