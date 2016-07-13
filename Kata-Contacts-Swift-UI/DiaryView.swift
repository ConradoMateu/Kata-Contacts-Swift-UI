//
//  DiaryView.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

protocol ContactView {
    
    
    func addContact(sender: AnyObject)
    func getName() -> String
    func getNumber() -> String
}

protocol DiaryView {
    func showContacts(contacts: [Contact])
}
