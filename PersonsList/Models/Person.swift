//
//  Person.swift
//  PersonsList
//
//  Created by Илья Першин on 04.11.2020.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson(from dataManager: DataManager) -> Person? {
        
        if dataManager.names.count > 0,
           dataManager.surnames.count > 0,
           dataManager.emails.count > 0,
           dataManager.phones.count > 0 {
            
            let name = dataManager.names
                .remove(at: Int.random(in: 0..<dataManager.names.count))
            
            let surname = dataManager.surnames
                .remove(at: Int.random(in: 0..<dataManager.surnames.count))
            
            let phone = dataManager.phones
                .remove(at: Int.random(in: 0..<dataManager.phones.count))
           
            let email = dataManager.emails
                .remove(at: Int.random(in: 0..<dataManager.emails.count))

            return Person(name: name, surname: surname, email: email, phone: phone)
        }
        
        return nil
    }
}

class DataManager {
    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Ilya"
    ]
    
    var surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins",
        "Pershin"
    ]
    
    var emails = [
        "qwer@gmail.com",
        "apple@icloud.com",
        "user@gmail.com",
        "rewq@gmail.com",
        "abc@mail.ru",
        "pershin@gmail.com"
    ]
    
    var phones = [
        "123",
        "321",
        "456",
        "789",
        "999",
        "321"
    ]
}


