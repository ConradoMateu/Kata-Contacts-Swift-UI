//
//  ContactPresenterImp.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class ContactPresenter {
    
    private let view: ContactView
    private let model: UseCase
    
    required init(view: ContactView, model: UseCase) {
        self.view = view
        self.model = model
    }
    
    func addContact(contact: Contact) {
        model.createContact.create(contact);
    }
    
}


