//
//  FlowTest.swift
//  QuizEngineTests
//
//  Created by Jaime Yesid Leon Parada on 24/05/22.
//

import Foundation
import XCTest
@testable import QuizEngine

class FlowTest: XCTestCase {
    
    let router = RouterSpy()
    
    func test_start_withNoQuestions_doesNoRouteToQuestion(){
        makeSUT(questions: []).start()
        
        XCTAssertTrue(router.routedQuestions.isEmpty)
    }
    
    func test_start_withOneQuestion_routesToCorrectQuestion(){
        makeSUT(questions: ["Q1"]).start()
        
        XCTAssertEqual(router.routedQuestions, ["Q1"])
    }
    
    func test_start_withOneQuestion_routesToCorrectQuestion_2(){
        makeSUT(questions: ["Q2"]).start()
        
        XCTAssertEqual(router.routedQuestions, ["Q2"])
    }
    
    func test_start_withTwoQuestions_routesToFirstQuestion(){
        makeSUT(questions: ["Q1", "Q2"]).start()
        
        XCTAssertEqual(router.routedQuestions, ["Q1"])
    }
  
    func test_startTwice_withTwoQuestions_routesToFirstQuestionTwice(){
        let sut = makeSUT(questions: ["Q1", "Q2"])
        sut.start()
        sut.start()
        
        XCTAssertEqual(router.routedQuestions, ["Q1", "Q1"])
    }
    
    func test_startAndAnswerFirstQuestion_withTwoQuestions_routesToSecondQuestion(){
        let sut = makeSUT(questions: ["Q1", "Q2"])
            
        sut.start()
        
        router.answerCallback("A1")
        
        XCTAssertEqual(router.routedQuestions, ["Q1", "Q2"])
    }
    
    func test_startAndAnswerFirstAndSecondQuestions_withThreeQuestions_routesToSecondAndThridQuestion(){
        let sut = makeSUT(questions: ["Q1", "Q2", "Q3"])
            
        sut.start()
        
        router.answerCallback("A1")
        router.answerCallback("A2")
        
        XCTAssertEqual(router.routedQuestions, ["Q1", "Q2", "Q3"])
    }
    
    func test_startAndAnswerFirstQuestion_withOneQuestion_doesNotRouteToAnotherQuestion(){
        let sut = makeSUT(questions: ["Q1"])
            
        sut.start()
        
        router.answerCallback("A1")
        
        XCTAssertEqual(router.routedQuestions, ["Q1"])
    }
    
    func test_start_withNoQuestions_routesToResults(){
        makeSUT(questions: []).start()
        
        XCTAssertEqual(router.routedResult?.answers, [:])
    }
    
    func test_start_withOneQuestion_doesNoRoutesToResults(){
        makeSUT(questions: ["Q1"]).start()
        
        XCTAssertNil(router.routedResult)
    }

    func test_startAndAnswerFirstQuestion_withTwoQuestions_doesNotRouteToResults(){
        let sut = makeSUT(questions: ["Q1", "Q2"])
            
        sut.start()
        
        router.answerCallback("A1")
        
        XCTAssertNil(router.routedResult)
    }
    
    
    func test_startAndAnswerFirstAndSecondQuestion_withTwoQuestion_routesToResults(){
        let sut = makeSUT(questions: ["Q1", "Q2"])
            
        sut.start()
        
        router.answerCallback("A1")
        router.answerCallback("A2")
        
        XCTAssertEqual(router.routedResult?.answers, ["Q1" : "A1", "Q2": "A2"])
    }
    
    func test_startAndAnswerFirstAndSecondQuestion_withTwoQuestion_scores(){
        let sut = makeSUT(questions: ["Q1", "Q2"], scoring: { _ in 10 })
            
        sut.start()
        
        router.answerCallback("A1")
        router.answerCallback("A2")
        
        XCTAssertEqual(router.routedResult!.score, 10)
    }
    
    func test_startAndAnswerFirstAndSecondQuestion_withTwoQuestion_scoresWithRightAnswers(){
        var recivedAnswers = [String: String]()
        let sut = makeSUT(questions: ["Q1", "Q2"], scoring: { answers in
            recivedAnswers = answers
            return 20
        })
        
            
        sut.start()
        
        router.answerCallback("A1")
        router.answerCallback("A2")
        
        XCTAssertEqual(recivedAnswers, ["Q1" : "A1", "Q2": "A2"])
    }
    
    // MARK: Helpers
    func makeSUT(questions: [String],
                 scoring:@escaping ([String: String]) -> Int = { _ in return 0}) -> Flow<String, String, RouterSpy> {
        return Flow(questions: questions, router: router, scoring: scoring)
    }
}
