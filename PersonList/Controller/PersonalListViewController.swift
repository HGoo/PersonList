//
//  PersonalListViewController.swift
//  PersonList
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class PersonalListViewController: UITableViewController {
    
    // MARK: - Publick Properties
    let persons = Person.getpersons()
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personList", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "Detail" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailPersonVC = segue.destination as! DetailPersonViewController
            detailPersonVC.person = persons[indexPath.row]
            
        }
    }
}
