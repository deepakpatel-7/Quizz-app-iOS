//
//  QuizBrain.swift
//  Quiz-app-iOS
//
//  Created by Deepak Patel on 24/10/23.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "JavaScript is a statically-typed language", a: "False"),
        Question(q: "JavaScript is commonly used for both front-end and back-end web development", a: "True"),
        Question(q: "JavaScript is a compiled language", a: "False"),
        Question(q: "The 'let' keyword is used to declare variables with block scope in JavaScript", a:"True"),
        Question(q: "JavaScript is an object-oriented programming language", a: "True"),
        Question(q: "The '=== ' operator in JavaScript checks for both value and type equality", a: "True"),
        Question(q: "In JavaScript, 'null' is the same as 'undefined'", a: "False"),
        Question(q: "You can use 'break' and 'continue' statements in JavaScript loops", a: "True"),
        Question(q: "JavaScript allows for multiple inheritance", a: "False"),
        Question(q: "The 'console.log()' function is used for user input in JavaScript", a: "False"),
    ];
    var questionNumber  = 0
    var score = 0
    
    
    
    mutating func checkAnswer(userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }
        else{
           return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() ->String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber+1 < quiz.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    
    
}
