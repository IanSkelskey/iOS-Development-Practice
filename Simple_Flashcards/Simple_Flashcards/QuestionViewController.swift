//
//  ViewController.swift
//  Simple_Flashcards
//
//  Created by Diane Skelskey on 12/17/21.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var mainText: UILabel!
    
    var currentQuestionIndex = 0
    
    let questions: [String] = [
        "What is Ian's last name?",
        "What is the address of Bristol Starbucks?"
    ]
    
    let answers: [String] = [
        "Skelskey",
        "641 Farmington Ave."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainText.text = questions[currentQuestionIndex]
    }
    @IBAction func showAnswer(_ sender: Any) {
        mainText.text =  answers[currentQuestionIndex]
    }
    
    @IBAction func prevPressed(_ sender: Any) {
        if currentQuestionIndex == 0 {
            currentQuestionIndex = questions.count - 1
        }else{
            currentQuestionIndex -= 1
        }
        mainText.text = questions[currentQuestionIndex]
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        if currentQuestionIndex == questions.count - 1 {
            currentQuestionIndex = 0
        }else{
            currentQuestionIndex += 1
        }
        mainText.text = questions[currentQuestionIndex]
    }
}

