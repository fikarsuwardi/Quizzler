//
//  ViewController.swift
//  QuizzlerTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var progressView: UIProgressView!
  
  var quizBrain = QuizBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  @IBAction func answerPressed(_ sender: UIButton) {
    
    let userAnswer = sender.currentTitle!

    let userGetRight = quizBrain.checkAnswer(userAnswer)
    if userGetRight {
      sender.backgroundColor = .systemGreen
    } else {
      sender.backgroundColor = .systemRed
    }
    
    quizBrain.nextQuestion()
  
    Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
  }
  
  @objc func updateUI() {
    questionLabel.text = quizBrain.getQuestionText()
    scoreLabel.text = "Score = \(quizBrain.getScore())"
    progressView.progress = quizBrain.getProgress()
    trueButton.backgroundColor = .clear
    falseButton.backgroundColor = .clear
  }
  
}

