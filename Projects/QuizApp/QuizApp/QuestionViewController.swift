//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Jaime Yesid Leon Parada on 31/05/22.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private(set) var question = ""
    private(set) var options = [String]()
    private var selection: (([String]) -> Void)? = nil
    private let reuseIdentifier = "Cell"
    
    convenience init(question: String, options: [String], selection: @escaping ([String]) -> Void){
        self.init()
        self.question = question
        self.options = options
        self.selection = selection
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.text = question
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeue(in: tableView)
        cell.textLabel?.text = options[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection?(selectedOptions(in: tableView))
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if tableView.allowsMultipleSelection {
            selection?(selectedOptions(in: tableView))
        }
    }
    
    private func selectedOptions(in tableView: UITableView) -> [String] {
        guard let indexPath = tableView.indexPathsForSelectedRows else { return [] }
        
        return indexPath.map {options[$0.row]}
    }
    
    private func dequeue(in tableView: UITableView) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) {
            return cell
        }
        
        return UITableViewCell(style: .default, reuseIdentifier: reuseIdentifier)
    }
}
