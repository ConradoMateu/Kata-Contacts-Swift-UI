//
//  ContactTableViewController.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class DiaryViewController: NSObject, DiaryView  {
    
    private var tableView: UITableView?
    private var presenter: DiaryPresenter?
    private var delegate: TBDelegate?
    private var dataSource: TBDataSource?
    private var injector =  Injector()
    
    init(tableView: UITableView){
        super.init()
        self.tableView = tableView
        self.presenter = injector.diaryPresenter(self)
        self.dataSource = TBDataSource()
        self.delegate = TBDelegate(dataSource: dataSource!, presenter: presenter!)
        self.tableView?.delegate = delegate
        self.tableView?.dataSource = dataSource
        
        presenter?.initialize()
    }
    
    func addContact(contact: Contact)  {
        dataSource?.contactList.append(contact)
        tableView?.reloadData()
    }

    
    func showContacts(contacts: [Contact]){
        dataSource?.contactList += contacts
        tableView?.reloadData()
    }
}