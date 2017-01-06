//
//  MyTableViewController.swift
//  TableVew App
//
//  Created by Ajit Kumar Baral on 1/6/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let people = [("Steve", "Jobs"), ("Bill", "Gates"), ("Elon", "Musk"), ("Jack", "Ma")]
    
    let course = ["Java", "C++", "Objective C", "Swift"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return people.count
            
        }
        else{
            return course.count
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if(indexPath.section == 0){
            let (name, surname) = people[indexPath.row]
            cell.textLabel?.text = name
            print("the surname is \(surname)")
        }
        else{
            let courseName = course[indexPath.row]
            cell.textLabel?.text = courseName
        }
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
            return "Names"
        }
        else{
            return "Courses"
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selection = indexPath.section
        if(selection == 0){
            let(name, surname) = people[indexPath.row]
            print("The selected item is \(name) \(surname)")
        }
        else
        {
            print("The selected item is \(course[indexPath.row])")
            
        }
    }
    
}
