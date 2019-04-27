//
//  QandATableViewCell.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class QandATableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.questionText
        askerLabel.text = question.asker
        
        if let answer = question.answer {
            answerLabel.text = answer
        } else {
            answerLabel.text = "-Answer-"
        }
    }
    

}
