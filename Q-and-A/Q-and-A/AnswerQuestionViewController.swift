//
//  AnswerQuestionViewController.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    var questionController: QuestionController?
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    private func updateViews() {
        guard let question = question, isViewLoaded else { return }
        questionLabel.text = question.questionText
        askedByLabel.text = question.asker
    }
    
    
    @IBAction func submitAnswerButtonPressed(_ sender: Any) {
        guard let answer = answerTextView.text,
            let answerer = answererTextField.text,
            let question = question
            else { return }

        print(answer)
        questionController?.updateQuestion(questionToUpdate: question, answer: answer, answerer: answerer)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

 }
