//
//  MockDiaryRepository.swift
//  Kata-Contacts-Swift-UI
//
//  Created by Conrado Mateu Gisbert on 07/07/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import Foundation

class MockDiaryRepository : InMemoryDiaryRepository {
   
    override init() {
        super.init()
        create(Contact(name: "Nombre", phone: "2342342"))
        create(Contact(name: "Nombre1", phone: "2342342"))
        create(Contact(name: "Nombre2", phone: "2342342"))
        create(Contact(name: "Nombre3", phone: "2342342"))
    }

}