//
//  DiaryImp.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 04/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class InMemoryDiaryRepository : DiaryRepository {
    
    private var contacts: [Contact]
    
    init(){
        self.contacts = [Contact]()
    }
    
    func getAll() -> [Contact] {
        return contacts;
    }
    
    func create(contact: Contact) {
        contacts.append(contact)
    }
    
}
