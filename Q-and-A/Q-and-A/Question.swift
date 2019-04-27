//
//  Question.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation

struct Question: Equatable {
    var questionText: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(questionText: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.questionText = questionText
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
    
}
