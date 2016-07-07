//
//  ContactPresenter.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

protocol ContactPresenter {
    func initialize()
    func addContact(contact: Contact)
}
