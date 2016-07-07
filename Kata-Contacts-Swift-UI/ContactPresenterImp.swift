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
    var model: UseCase
    
    required init(view: DiaryView, model: UseCase) {
        self.view = view
        self.model = model
    }
    
    func addContact(contact: Contact) {
        model.createContact.create(contact);
        getContacts()
    }
    
    private func getContacts(){
        view.showContacts(model.getAllContacts.getAll())
    }
    
    func initialize() {
        getContacts()
    }
    
}
