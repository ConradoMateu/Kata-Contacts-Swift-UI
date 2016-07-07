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
    var contactList: [Contact] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let injector = Injector();
        
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
        self.contactList = contacts
        tableView.reloadData()
    } //tableView (en este caso)
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = contactList[indexPath.row].name
        return cell
    }

}
