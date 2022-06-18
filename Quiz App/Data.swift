//
//  Data.swift
//  Quiz App
//
//  Created by Seth Loh on 15/6/22.
//

import Foundation

struct Question {
    var title: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var correctAns: Int
}

var Questions = [
    Question(title: "When was Nutella invented?", option1: "1496", option2: "1964", option3: "2005", option4: "2003", correctAns: 2),
    Question(title: "What is Rick Astley's birth year?", option1: "1967", option2: "1956", option3: "1969", option4: "1966", correctAns: 4),
    Question(title: "When was Objective C created?", option1: "1987", option2: "2001", option3: "1984", option4: "1989", correctAns: 3),
    Question(title: "How many seasons of Paw Patrol were there as of 2020?", option1: "6", option2: "5", option3: "4", option4: "7", correctAns: 1),
    Question(title: "How many drinks can you dispense in the coffee machine outside?", option1: "1", option2: "4", option3: "8", option4: "10", correctAns: 3),
]

var pointsCount = 0
