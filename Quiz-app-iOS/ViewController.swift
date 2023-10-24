

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
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

    
    var questionNumber  = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle;
        let actualAnswer = quiz[questionNumber].answer
        
        if(userAnswer == actualAnswer){
            sender.backgroundColor = UIColor.green
        }
        
        else{
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber+1 < quiz.count{
            questionNumber+=1
        }
        else{
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats: false)
    }
    
    @objc func updateUI()
    {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
    }
}

