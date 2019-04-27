//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation


class QuestionController {
    
    var questions: [Question] = []
    
    func createQuestion(questionText: String, asker: String, answer: String?, answerer: String?) {
        let newQuestion = Question(questionText: questionText, asker: asker)
        questions.append(newQuestion)
    }
    
    func updateQuestion(questionToUpdate: Question, answer: String?, answerer: String? ) {
        guard let index = questions.firstIndex(of: questionToUpdate) else { return }
        
        var updatedQuestion = questionToUpdate
        updatedQuestion.questionText = questionToUpdate.questionText
        updatedQuestion.asker = questionToUpdate.asker
        updatedQuestion.answer = answer
        updatedQuestion.answerer = answerer
        
        questions.remove(at: index)
        questions.insert(updatedQuestion, at: index)
        
    }
    
    func deleteQuestion(questionIndex: Int) {
        questions.remove(at: questionIndex)
    }

}
