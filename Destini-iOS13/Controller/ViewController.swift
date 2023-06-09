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
    
    var storyBrain=StoryBrain()
    
    var currentQuestionIndex=0
    
    func updateUI(){
        storyLabel.text=storyBrain.getStory().title
        choice1Button.setTitle(storyBrain.getStory().choice1, for: .normal)
        choice2Button.setTitle(storyBrain.getStory().choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let answer=sender.currentTitle!
        
        storyBrain.nextStory(userChoice: answer)
        
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()

    }


}

