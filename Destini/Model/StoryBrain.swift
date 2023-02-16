//
//  StoryBrain.swift
//  Destini
//
//  Created by Anton  on 14.02.2023.
//

import Foundation

struct StoryBrain {
 
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
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destionation
        } else {
            storyNumber = stories[storyNumber].choice2Destionation
        }
    }
    
    func getTextTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getTextChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getTextChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
}
