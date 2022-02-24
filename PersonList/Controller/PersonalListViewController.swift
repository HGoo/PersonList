//
//  PersonalListViewController.swift
//  PersonList
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class PersonalListViewController: UITableViewController {
    
    // MARK: - Publick Properties
    var persons = Person.info()
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.fullName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personList", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = persons.fullName[indexPath.row]
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailPersonVC = segue.destination as! DetailPersonViewController
            detailPersonVC.indexPath = indexPath.row
            detailPersonVC.persons = persons
            
        }
        
        if tabBarItem.tag == 1 {
            let onlyPersonVC = segue.destination as! OnlyPersonListViewController
            onlyPersonVC.persons = persons
        }
    }
}
