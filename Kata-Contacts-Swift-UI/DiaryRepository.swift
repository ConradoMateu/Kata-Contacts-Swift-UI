//
//  Diary.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

protocol DiaryRepository {
    func getAll() -> [Contact]
    func create(contact: Contact)
}