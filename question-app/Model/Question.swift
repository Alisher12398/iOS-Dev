//
//  Question.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 19.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import Foundation

//question model
class Question {
    
    var text: String
    var variantA: String
    var variantB: String
    var variantC: String
    var variantD: String
    
    var answer: Int
    
    init(text: String, variantA: String, variantB: String, variantC: String, variantD: String, answer: Int) {
        
        self.text = text
        self.variantA = variantA
        self.variantB = variantB
        self.variantC = variantC
        self.variantD = variantD
        
        self.answer = answer
        
    }
    
    
}
