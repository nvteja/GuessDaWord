//
//  ViewController.swift
//  GuessDaWord
//
//  Created by viswateja nelakuditi on 1/19/16.
//  Copyright © 2016 viswateja nelakuditi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GuessText: UITextField!
    
    @IBOutlet weak var GuessDisplay: UILabel!
    
    @IBAction func CheckGuess(sender: AnyObject){
        
        
        let randomWord:String = "BEARS"
        let gText = GuessText.text!.uppercaseString
        var guess = Array(gText.characters)
        var displayText = GuessDisplay.text!
        var randomWordArray = Array(randomWord.characters)
        
        if(guess.count != 5){
            
            displayText = displayText + "\n" + gText + " = Please enter only 5 letter words!"
            GuessDisplay.text = displayText
            return
        }
        
        var alpha: Int = 0 , beta:Int = 0
        
        var i = 0;
        for(i = 0; i < 5; i++){
        
            let guessIndex=randomWordArray.indexOf(guess[i])
            if(guessIndex >= 0){
            
                if(String(guess[i]) == String(randomWordArray[i])){ // alpha
                    
                  alpha = alpha + 1
           
                } else{ // beta
                  
                    beta = beta + 1
                    
                }

            }
            
        }
        if(alpha == 5){
        
            displayText = displayText + "\n" + gText + " You guessed the word!"
            
        } else{
            
            displayText = displayText + "\n" + gText + " = \(alpha) Alpha, \(beta) Beta"
        }
        GuessDisplay.text = displayText
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

