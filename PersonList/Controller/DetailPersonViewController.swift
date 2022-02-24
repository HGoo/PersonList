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
    var person: Person!
        
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = person.fullName
        phoneNumber.text = person.phoneNumber
        email.text = person.email
    }
}
