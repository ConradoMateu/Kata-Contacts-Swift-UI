//
//  CreateContact.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class CreateContact {
    
    private let diaryRepository: DiaryRepository
    
    init( _ diaryRepository: DiaryRepository) {
        self.diaryRepository = diaryRepository
    }
    
    func create(contact: Contact)  {
        diaryRepository.create(contact)
    }
}