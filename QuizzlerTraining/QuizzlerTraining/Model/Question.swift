//
//  Question.swift
//  QuizzlerTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 25/10/22.
//

import Foundation


struct Question {
  let text: String
  let answer: String
  
  init (q: String, a: String) {
    text = q
    answer = a
  }
}
