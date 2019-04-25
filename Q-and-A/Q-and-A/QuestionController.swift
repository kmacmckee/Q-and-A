//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/25/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []

    
    func createQuestion(withText text: String, asker: String, answer: String?, answerer: String?) {
        let question = Question(question: text, asker: asker)
        questions.append(question)
    }
    
    
    func updateQuestion(question: Question, answer: String?, answerer: String?) {
        var question = question
        question.answer = answer
        question.answerer = answerer
    }
    
    
    func deleteQuestion(question: Question) {
        if let questionIndex = questions.firstIndex(of: question) {
            questions.remove(at: questionIndex)
        }
    }
    
    
}
