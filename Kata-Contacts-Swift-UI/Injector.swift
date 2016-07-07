//
//  Injector.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation


class Injector {
    
    private var repo: DiaryRepository = MockDiaryRepository()
    
    init(){}
    
    func diaryRepository() -> DiaryRepository {
        return repo
    }
    
    func createContact() -> CreateContact {
       return CreateContact(diaryRepository())
    }
    
    func getAllContacts() -> GetAllContacts {
        return GetAllContacts(diaryRepository())
    }
    
    func contactUseCases() -> UseCase {
        return UseCase(createContact: createContact(), getAllContacts: getAllContacts())
    }
    
    func contactPresenter(view: DiaryView) -> ContactPresenter {
        return ContactPresenter(view: view, model: contactUseCases())
    }
}