//
//  DiaryViewController.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 05/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController, ContactView{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var nameField: UITextField!

    var contactPresenter: ContactPresenter?
    var tableViewController: DiaryViewController?
    var delegate: TBDelegate?
    var dataSource: TBDataSource?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let injector = Injector();
        contactPresenter = injector.contactPresenter(self)
        tableViewController = DiaryViewController(tableView: tableView)   
    }
 
    func getName() -> String {
        return nameField.text!
    }
    func getNumber() -> String {
        return numberField.text!
    }
        
    @IBAction func addContact(sender: AnyObject) {
        let newContact: Contact = Contact(name: getName(), phone: getNumber())
        contactPresenter?.addContact(newContact)
        tableViewController?.addContact(newContact)
    }

    

}
