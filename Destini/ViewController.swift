//
//  ViewController.swift
//  Destini
//
//  Created by Anton  on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    var storyNumber = 0
    
    let stories = [
        Story(title: "You see a fork in the road.",
              choice1: "Take a left.",
              choice1Destionation: 1,
              choice2: "Take a right.",
              choice2Destionation: 2),
        
        Story(title: "You see a tiger.",
              choice1: "Shout for help.",
              choice1Destionation: 0,
              choice2: "Play dead.",
              choice2Destionation: 0),
        
        Story(title: "You find a treasure chest.",
              choice1: "Open it.",
              choice1Destionation: 0,
              choice2: "Check for traps",
              choice2Destionation: 0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    
    @IBAction func makeChoice(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle
        
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destionation
        } else {
            storyNumber = stories[storyNumber].choice2Destionation
        }
        
        updateUI()
    }
    
    
    func updateUI() {
        
        label.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
}

