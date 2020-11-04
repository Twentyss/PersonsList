//
//  DetailsViewController.swift
//  PersonsList
//
//  Created by Илья Першин on 04.11.2020.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.fullname)"
        phoneLabel.text? += "\(person.phone)"
        emailLabel.text? += "\(person.email)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
