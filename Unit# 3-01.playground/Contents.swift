

// Created on: October-09-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for creating the number guessing game 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let MAXSALE: Int = 25
    
    let questionLable = UILabel()
    let numberOfSaleTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter how many cookies we had sale on today"
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberOfSaleTextField.borderStyle = UITextBorderStyle.roundedRect
        numberOfSaleTextField.placeholder = "Put a whole number    "
        view.addSubview(numberOfSaleTextField)
        numberOfSaleTextField.translatesAutoresizingMaskIntoConstraints = false
        numberOfSaleTextField.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 5).isActive = true
        numberOfSaleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Check", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(checkNumberOfSale), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberOfSaleTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func checkNumberOfSale() {
        // show answers 
        let numberEnter : Int =  Int(numberOfSaleTextField.text!)!
        
        if numberEnter > MAXSALE {
            answerLable.text = "Too many sale"
        }
        else if numberEnter < MAXSALE {
            answerLable.text = "more sale"
        }
        else {
            answerLable.text = "You got it!"
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
