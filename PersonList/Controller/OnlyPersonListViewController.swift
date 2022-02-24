//
//  OnlyPersonListViewController.swift
//  PersonList
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class OnlyPersonListViewController: UITableViewController {
    
    // MARK: - Publick Properties
    var persons = Person.info()
    var currentSection: Int!
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.fullName.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        currentSection = section
        return  persons.fullName[section]
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onlyPersonList", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row.isMultiple(of: 2) {
            content.text = persons.email[currentSection]
        } else {
            content.text = persons.phoneNumber[currentSection]
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
}
