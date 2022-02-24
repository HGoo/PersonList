//
//  DetailPersonViewController.swift
//  PersonList
//
//  Created by Николай Петров on 22.02.2022.
//

import UIKit

class DetailPersonViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var fullName: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    
    // MARK: - Publick Properties
    var indexPath: Int!
    var persons: Person!
        
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = persons.fullName[indexPath]
        phoneNumber.text = persons.phoneNumber[indexPath]
        email.text = persons.email[indexPath]
    }
}
