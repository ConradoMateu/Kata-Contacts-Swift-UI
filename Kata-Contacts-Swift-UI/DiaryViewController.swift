//
//  DiaryViewController.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class DiaryViewController: UIViewController, DiaryView {



        
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var nameField: UITextField!

    var presenter: ContactPresenter?
    var tableViewController: ContactTableViewController?
        
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let injector = Injector();
        
        tableViewController = ContactTableViewController(tableView: tableView)
        presenter = injector.contactPresenter(self)
        presenter?.initialize()
    }
 
    func getName() -> String {
        return nameField.text!
    }
    func getNumber() -> String {
        return numberField.text!
    }
        
    @IBAction func addContact(sender: AnyObject) {
        let newContact: Contact = Contact(name: getName(), phone: getNumber())
        presenter?.addContact(newContact)
    }

    func showContacts(contacts: [Contact]){
    
    tableViewController?.showContacts(contacts)
    
    }

}
