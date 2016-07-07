//
//  getContact.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class GetAllContacts {
    
    private let diaryRepository: DiaryRepository
    
    init( _ diaryRepository: DiaryRepository) {
        self.diaryRepository = diaryRepository
    }

    
    func getAll() -> [Contact] {
        return diaryRepository.getAll()
    }
}