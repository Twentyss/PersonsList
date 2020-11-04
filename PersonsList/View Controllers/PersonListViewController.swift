//
//  PersonsViewController.swift
//  PersonsList
//
//  Created by Илья Першин on 04.11.2020.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    let dataManager = DataManager()
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBarItem.title = "Persons List"
        tabBarController?.navigationItem.title = "Persons List"
        

        getPersons()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = "\(person.fullname)"
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        let navigationVC = segue.destination as! UINavigationController
//        let tabBarController = navigationVC.viewControllers as! UITabBarController
        
//        let detailedPersonListVC = tabBarController.viewControllers?.last as! DetailedPersonListViewController
        
        let detailsVC = segue.destination as! DetailsViewController
        
       
        
//        detailedPersonListVC.persons = persons
        
        guard
            let selectedRowIndex = tableView.indexPathForSelectedRow?.row
        else { return }
        
        detailsVC.person = persons[selectedRowIndex]
    }

    private func getPersons()  {
        while let person = Person.getPerson(from: dataManager) {
            persons.append(person)
        }
    }
}
