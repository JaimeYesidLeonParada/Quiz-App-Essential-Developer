//
//  ResultsPresenterTest.swift
//  QuizAppTests
//
//  Created by Jaime Yesid Leon Parada on 23/06/22.
//

import XCTest
import QuizEngine
@testable import QuizApp

class ResultsPresenterTest: XCTestCase {
    
    let singleAnswerQuestion = Question.singleAnswer("Q1")
    let multipleAnswerQuestion = Question.multipleAnswer("Q2")
    
//    func test_summary_withTwoQuestionAndScoreOne_returnsSummary() {
//        let answers = [singleAnswerQuestion: ["A1"], multipleAnswerQuestion:["A2", "A3"]]
//        let orderedQuestions = [singleAnswerQuestion, multipleAnswerQuestion]
//        let result = Result(answers: answers, score: 1)
//        let sut = ResultsPresenter(result: result questions: orderedQuestions, correctAnswers: [:])
//
//        XCTAssertEqual(sut.summary, "You got 1/2 correct")
//    }
    
//    func test_presentableAnswers_withoutQuestions_isEmpty() {
//        let answers = Dictionary<Question<String>, [String]>()
//        let result : Result<Question<String>, [String]>
//
//        let sut = ResultsPresenter(result: result questions: [], correctAnswers: [:])
//
//        XCTAssertTrue(sut.presentableAnswers.isEmpty)
//    }
    
//    func test_presentableAnswers_withWrongSingleAnswer_mapsAnswer() {
//        let answers = [singleAnswerQuestion: ["A1"]]
//        let correctAnswers = [singleAnswerQuestion:["A2"]]
//        let result = Result(answers: answers, score: 0)
//
//        let sut = ResultsPresenter(result: result, questions: [singleAnswerQuestion], correctAnswer: correctAnswers)
//
//        XCTAssertEqual(sut.presentableAnswers.count, 1)
//        XCTAssertEqual(sut.presentableAnswers.first!.question, "Q1")
//        XCTAssertEqual(sut.presentableAnswers.first.answer, "A2")
//        XCTAssertEqual(sut.presentableAnswers.first.wrongAnswer, "A2")
//    }
    
//    func test_presentableAnswers_withWrongMultipleAnswer_mapsAnswer() {
//        let answers = [multipleAnswerQuestion: ["A1", "A2"]]
//        let correctAnswers = [multipleAnswerQuestion:["A2", "A3"]]
//        let result = Result(answers: answers, score: 0)
//
//        let sut = ResultsPresenter(result: result, questions: [multipleAnswerQuestion], correctAnswer: correctAnswers)
//
//        XCTAssertEqual(sut.presentableAnswers.count, 1)
//        XCTAssertEqual(sut.presentableAnswers.first!.question, "Q2")
//        XCTAssertEqual(sut.presentableAnswers.first.answer, "A2, A3")
//        XCTAssertEqual(sut.presentableAnswers.first.wrongAnswer, "A1, A4"])
//    }
    
//        func test_presentableAnswers_withRightSingleAnswer_mapsAnswer() {
//            let answers = [singleAnswerQuestion: ["A1"]]
//            let correctAnswers = [singleAnswerQuestion:["A1"]]
//            let result = Result(answers: answers, score: 1)
//
//            let sut = ResultsPresenter(result: result, questions: [singleAnswerQuestion], correctAnswer: correctAnswers)
//
//            XCTAssertEqual(sut.presentableAnswers.count, 1)
//            XCTAssertEqual(sut.presentableAnswers.first!.question, "Q1")
//            XCTAssertEqual(sut.presentableAnswers.first.answer, "A1")
//            XCTAssertNil(sut.presentableAnswers.first.wrongAnswer)
//        }
//    func test_presentableAnswers_withTwoQuestions_mapsOrderedAnswer() {
//        let answers = [singleAnswerQuestion: ["A2"], multipleAnswerQuestion: ["A1", "A4"]]
//        let correctAnswers = [singleAnswerQuestion: ["A2"], multipleAnswerQuestion: ["A1", "A4"]]
//        let orderedQuestions = [singleAnswerQuestion, multipleAnswerQuestion]
//        let result = Result(answers: answers, score: 0)
//        
//        let sut = ResultsPresenter(result: result, questions: orderedQuestions, correctAnswer: correctAnswers)
//        
//        XCTAssertEqual(sut.presentableAnswers.count, 2)
//        XCTAssertEqual(sut.presentableAnswers.first!.question, "Q2")
//        XCTAssertEqual(sut.presentableAnswers.first.answer, "A2")
//        XCTAssertNil(sut.presentableAnswers.first.wrongAnswer)
//        
//        XCTAssertEqual(sut.presentableAnswers.last!.question, "Q2")
//        XCTAssertEqual(sut.presentableAnswers.last!.answer, "A1, A4")
//        XCTAssertNil(sut.presentableAnswers.last!.wrongAnswer)
//    }

}
