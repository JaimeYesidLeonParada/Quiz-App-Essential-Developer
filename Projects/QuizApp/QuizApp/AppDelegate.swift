//
//  AppDelegate.swift
//  QuizApp
//
//  Created by Jaime Yesid Leon Parada on 31/05/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        let rootViewController = QuestionViewController(question: "A question?", options: ["Option 1", "Option 2"]) {
//            print($0)
//        }
//        _ = rootViewController.view
//        rootViewController.tableView.allowsMultipleSelection = true
//
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.rootViewController = rootViewController
//
//        self.window = window
//        window.makeKeyAndVisible()
//
//        return true
//    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootViewController = ResultsViewController(summary: "You got 1/2 correct", answers: [
            PresentableAnswer(question: "Question 1?", answer: "Yeah!", wrongAnswer: nil),
            PresentableAnswer(question: "Another question?", answer: "Heall Yeah", wrongAnswer: "Hell no!")
        ])
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = rootViewController
        
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }
}

