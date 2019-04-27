//
//  QuestionTableViewController.swift
//  Q-and-A
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    let questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QandACell", for: indexPath)
        
        guard let questionCell = cell as? QandATableViewCell else { return cell }
        let question = questionController.questions[indexPath.row]
        questionCell.question = question
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
    
            questionController.deleteQuestion(questionIndex: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NewQuestionSegue" {
            
            guard let destinationVC = segue.destination as? NewQuestionViewController else { return }
            destinationVC.questionController = questionController
            
        }
        else if segue.identifier == "AnswerQuestionSegue" {
            
            guard let destinationVC = segue.destination as? AnswerQuestionViewController,
                let indexPath = tableView.indexPathForSelectedRow
                else { return }
            
            destinationVC.questionController = questionController
            destinationVC.question = questionController.questions[indexPath.row]
            
        }
    }

}
