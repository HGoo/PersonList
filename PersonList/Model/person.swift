//
//  Person.swift
//  PersonList
//
//  Created by Николай Петров on 23.02.2022.
//

struct Person {
    var fullName: [String]
    var email: [String]
    var phoneNumber: [String]
}

extension Person {
    func personInfo() -> [Person] {
        return [Person(fullName: genFullName(),
                       email: genEmail(),
                       phoneNumber: genPhoneNumber())]
        
    }
    
    func genFullName() -> [String] {
        var name = ["john", "Aaron", "Tim", "Ted", "Steven", "Andrey", "Max"]
        var surName = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins", "Brant", "Maddyson"]
        var fullName: [String] = []
        
        for indexArray in 0..<name.count {
            if !name.isEmpty, !surName.isEmpty {
                
                let currentName = name[indexArray]
                let currentSurName = surName.randomElement() ?? "Noname"
                
                fullName.append("\(currentName) \(currentSurName)")
            }
        }
        return fullName
    }
    
    func genEmail() -> [String] {
        let email: [String] = []
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let @domen = ["@google.com", "@yandex.ru", "@mail.ru", "@icloud.com"]
        let randomCountString = Int.random(in: 6...11)
        
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
}
