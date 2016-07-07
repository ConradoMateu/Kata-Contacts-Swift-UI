//
//  DiaryView.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

protocol DiaryView {
    
    func showContacts(contacts: [Contact]) //tableView (en este caso) 
    func addContact(sender: AnyObject) //tableView (en este caso)
    func getName() -> String
    func getNumber() -> String
}
