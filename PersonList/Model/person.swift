//
//  Person.swift
//  PersonList
//
//  Created by Николай Петров on 23.02.2022.
//

struct Person {
    let fullName: String
    let email: String
    let phoneNumber: String
}

extension Person {
    
    static func getpersons() -> [Person] {
        let data = DataForRandomPerson.shared.name
        var persons: [Person] = []
        
        let fullName = genFullName()
        let mail = genEmail()
        let phone = genPhoneNumber()
        
        for index in 0..<data.count {
            persons.append(Person(fullName: fullName[index],
                                  email: mail[index],
                                  phoneNumber: phone[index]))
        }
        return persons
    }
    
    static func genFullName() -> [String] {
        let data = DataForRandomPerson.shared
        var fullName: [String] = []
        
        for indexArray in 0..<data.name.count{
            if !data.name.isEmpty, !data.surName.isEmpty {
                
                let currentName = data.name[indexArray]
                let currentSurName = data.surName.randomElement() ?? "Noname"
                
                fullName.append("\(currentName) \(currentSurName)")
            }
        }
        return fullName
    }
    
    static func genEmail() -> [String] {
        let data = DataForRandomPerson.shared
        var email: [String] = []
        
        for _ in 0..<data.name.count {
            let randomCountString = Int.random(in: 5...12)
            var character = ""
            let domenMail = data.domen.randomElement() ?? "?"
            for _ in 1...randomCountString {
                let char = data.letters.randomElement() ?? "?"
                character += String(char)
            }
            email.append("\(character)\(domenMail)")
        }
        return email
    }
    
    static func genPhoneNumber() -> [String] {
        let data = DataForRandomPerson.shared
        var phoneNumber: [String] = []
        
        for _ in 0..<data.name.count {
            let codeNumber = Int.random(in: 800...900)
            let number = Int.random(in: 1000000...9999999)
            
            phoneNumber.append("+7 (\(codeNumber)) - \(number)")
        }
        return phoneNumber
    }
    
}
