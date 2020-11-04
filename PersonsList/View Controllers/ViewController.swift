//
//  ViewController.swift
//  PersonsList
//
//  Created by Илья Першин on 04.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataManger = DataManager()
        var persons: [Person] = []

        for index in 0...6 {
            persons.append(Person.getPerson(from: dataManger))
            print("\(persons[index].name) \(persons[index].surname)")
        }
    }


}

