// Created on November 2
// Created by Nicholas Pasco-Arnone
// Created for ICS3U
// This program can calculate the average of 10 random numbers

import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    
    let instructionLabel = UILabel()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    let numbersLabel = UILabel()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "click the button to find the average"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(findAverage), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numbersLabel.text = nil
        view.addSubview(numbersLabel)
        numbersLabel.translatesAutoresizingMaskIntoConstraints = false
        numbersLabel.topAnchor.constraint(equalTo: answerLabel.bottomAnchor, constant: 20).isActive = true
        numbersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func findAverage() {
        
        var totalOfNumbers : Float = 0
        var anArray: [Int] = []
        for counter in 1 ... 10 {
            
            let randomNumber : Int = Int(arc4random_uniform(100) + 1)
             totalOfNumbers = totalOfNumbers + Float(randomNumber)
            
            var grade1 = randomNumber
            
            anArray.append(randomNumber)
            
            
            answerLabel.text = "the average is:  \(totalOfNumbers / 10)"
        }
        
         numbersLabel.text = "the grades are: \(anArray)"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
