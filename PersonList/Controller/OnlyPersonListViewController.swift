//
//  OnlyPersonListViewController.swift
//  PersonList
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class OnlyPersonListViewController: UITableViewController {
    
    // MARK: - Publick Properties
    var persons = Person.getpersons()
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return  person.fullName
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onlyPersonList", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0 ? person.email : person.phoneNumber
    
        cell.contentConfiguration = content
        
        return cell
    }
    
}
