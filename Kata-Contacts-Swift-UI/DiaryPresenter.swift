//
//  DiaryPresenter.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 08/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation


class DiaryPresenter {
    
    private let view: DiaryView
    private let model: UseCase
    
    required init(view: DiaryView, model: UseCase) {
        self.view = view
        self.model = model
    }

    private func getContacts(){
        view.showContacts(model.getAllContacts.getAll())
    }
    
    func initialize() {
        getContacts()
    }

}
    