
//
//  Delegate.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 08/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation
import UIKit

class TBDelegate:NSObject, UITableViewDelegate{
    
    
    private let presenter :  DiaryPresenter
    
    
    private let dataSource: TBDataSource
    init(dataSource: TBDataSource, presenter: DiaryPresenter){
        self.presenter = presenter
        self.dataSource  = dataSource
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //let item = dataSource.itemAtIndexPath(indexPath)
        dataSource.deleteSubject(indexPath)
        //presenter.onItemClick(item)
    }
    
}
