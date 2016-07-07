//
//  ContactPresenterImp.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class ContactPresenterImp: ContactPresenter{
    
    var view: DiaryView
    var model: Diary
    
    required init(view: DiaryView, model: Diary) {
        self.view = view
        self.model = model
        
    }
    
    func addContact(contact: Contact) {
        model.contacts.append(contact)
        view.showContacts(model.contacts)
        
    }
    
    
}
