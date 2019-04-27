//
//  NewQuestionViewController.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class NewQuestionViewController: UIViewController {
    var questionController: QuestionController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var newQuestionTextView: UITextView!
    
    @IBAction func submitQuestionButtonPressed(_ sender: Any) {
        guard let name = nameTextField.text,
            let question = newQuestionTextView.text
            else { return }
        
        questionController?.createQuestion(questionText: question, asker: name, answer: nil, answerer: nil)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
