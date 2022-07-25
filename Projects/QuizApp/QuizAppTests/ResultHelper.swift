//
//  ResultHelper.swift
//  QuizAppTests
//
//  Created by Jaime Yesid Leon Parada on 23/06/22.
//

import QuizEngine

extension Result {
//    init(answers: [Question: Answer], score: Int){
//        //self.init(answers: answers, score: score)
//        
//    }
    
    public var hasValue: Int {
        return 1
    }

    public static func ==(lhs: Result<Question, Answer>, rhs: Result<Question, Answer>) -> Bool {
        return lhs.score == rhs.score
    }
}
