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
    static func info() -> Person {
        return Person(fullName: genFullName(),
                       email: genEmail(),
                       phoneNumber: genPhoneNumber())
        
    }
    
    static func genFullName() -> [String] {
        let fullName = DataForRandomPerson()
        var fullNameArray: [String] = []
        
        for indexArray in 0..<fullName.name.count {
            if !fullName.name.isEmpty, !fullName.surName.isEmpty {
                
                let currentName = fullName.name[indexArray]
                let currentSurName = fullName.surName.randomElement() ?? "Noname"
                
                fullNameArray.append("\(currentName) \(currentSurName)")
            }
        }
        return fullNameArray
    }
    
    static func genEmail() -> [String] {
        let dataMail = DataForRandomPerson()
        var email: [String] = []

        for _ in 0..<dataMail.name.count {
            let randomCountString = Int.random(in: 5...12)
            var character = ""
            let domenMail = dataMail.domen.randomElement() ?? "?"
            for _ in 1...randomCountString {
                let char = dataMail.letters.randomElement() ?? "?"
                character += String(char)
            }
            email.append("\(character)\(domenMail)")
        }
        return email
    }
    
    static func genPhoneNumber() -> [String] {
        let data = DataForRandomPerson()
        var phoneNumber: [String] = []
        
        for _ in 0..<data.name.count {
            let codeNumber = Int.random(in: 800...900)
            let number = Int.random(in: 1000000...9999999)
            
            phoneNumber.append("+7 (\(codeNumber)) - \(number)")
        }
        return phoneNumber
    }
    
}
