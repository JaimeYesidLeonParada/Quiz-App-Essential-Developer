//
//  Router.swift
//  QuizEngine
//
//  Created by Jaime Yesid Leon Parada on 10/06/22.
//

import Foundation

public protocol Router {
    associatedtype Question: Hashable
    associatedtype Answer
    
    typealias AnswerCallback = (Answer) -> Void
    func routeTo(question: Question, answerCallback: @escaping AnswerCallback)
    func routeTo(result: Result<Question, Answer>)
}
