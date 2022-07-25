//
//  Result.swift
//  QuizEngine
//
//  Created by Jaime Yesid Leon Parada on 10/06/22.
//

import Foundation

public struct Result<Question: Hashable, Answer> {
    public let answers: [Question: Answer]
    public let score: Int
}
