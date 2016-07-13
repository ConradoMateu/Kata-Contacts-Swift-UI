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
        create(Contact(name: "Conradomateu", phone: "65256462"))
        create(Contact(name: "Tonilopezmr", phone: "642848444"))
        create(Contact(name: "Grades Calculator", phone: "684949494"))
        
    }

}