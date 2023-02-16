//
//  StoryBrain.swift
//  Destini
//
//  Created by Anton  on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func makeChoice(_ sender: UIButton) {
        guard let userChoice = sender.currentTitle else { return }
        
        storyBrain.nextStory(userChoice: userChoice)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTextTitle() //stories[storyNumber].textLists
        choice1Button.setTitle(storyBrain.getTextChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getTextChoice2(), for: .normal)
    }
   
    

}

