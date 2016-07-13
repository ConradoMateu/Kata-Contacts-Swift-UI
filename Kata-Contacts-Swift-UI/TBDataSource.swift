//
//  TBDataSource.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 08/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation
import UIKit

class TBDataSource: NSObject, UITableViewDataSource{
    
    var contactList: [Contact] = []
    
    override init(){
        super.init()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = contactList[indexPath.row].name + "  " + contactList[indexPath.row].phone + "☎️"
        return cell
    }

    func deleteSubject(indexPath: NSIndexPath){
        contactList.removeAtIndex(indexPath.item)
    }

    func itemAtIndexPath(indexPath: NSIndexPath) -> Contact {
        return contactList[indexPath.item]
    }

}
