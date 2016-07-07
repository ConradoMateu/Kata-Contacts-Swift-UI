//
//  ContactTableViewController.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ContactTableViewController: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    var contactList: [Contact] = []
    
    init(tableView: UITableView){
        super.init()
        self.tableView = tableView
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
    }
    

    
    func showContacts(contacts: [Contact]){
        self.contactList = contacts
        tableView!.reloadData()
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


