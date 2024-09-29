//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLable: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quiz=[["2+2=4","True"],["2-2=5","False"],["5+3=8","True"]]
    var questionNUmber=0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerButtonPresses(_ sender: UIButton) {
        let userAnswer=sender.currentTitle
        let actualAnswer=quiz[questionNUmber][1]
        if userAnswer==actualAnswer{
            print("Right")
        }
        else{
            print("Wrong")
        }
        if questionNUmber+1<quiz.count{
            questionNUmber += 1
        }
        else{
            questionNUmber=0
        }
        updateUI()
        
    }
    func updateUI(){
        questionLable.text=quiz[questionNUmber][0]
    }
    

}

