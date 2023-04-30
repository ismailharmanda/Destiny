//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var currentQuestionIndex=0
    
    func updateUI(){
        storyLabel.text=stories[currentQuestionIndex].title
        choice1Button.setTitle(stories[currentQuestionIndex].choice1, for: .normal)
        choice2Button.setTitle(stories[currentQuestionIndex].choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let answer=sender.currentTitle
        
        if(answer==stories[0].choice1){
            currentQuestionIndex=1
        }else{
            currentQuestionIndex=2
        }
        
        updateUI()
    }
    let stories=[Story(title:"You see a fork in the road.", choice1:"Take a left.", choice2:"Take a right."),Story(title:"You see a tiger.", choice1:"Shout for help.", choice2:"Play dead."),Story(title:"You find a treasure chest", choice1:"Open it.", choice2:"Check for traps.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()

    }


}

