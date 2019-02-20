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
        
        questions.append(Question.init(text: "1 Қоғамда алғашқы ірі еңбек бөлінісін туғызған жағдай", variantA: "терімшіліктің дамуы", variantB: "аңшылықтың тууы", variantC: "тобырдың қалыптасуы", variantD: "темірді пайдалану", answer: 1))
        
        questions.append(Question.init(text: "2 Адамзат тарихы дамуының ең алғашқы кезеңі", variantA: "Қола дәуірі", variantB: "Темір дәуірі", variantC: "Рулық тайпалық кезең", variantD: "Андронов кезеңі", answer: 2))
        
        
        questions.append(Question.init(text: "3 Адамзат тарихы дамуының ең алғашқы кезеңі", variantA: "Қола дәуірі", variantB: "Темір дәуірі", variantC: "Рулық тайпалық кезең", variantD: "Андронов кезеңі", answer: 3))
        
        return questions
    }
    
}
