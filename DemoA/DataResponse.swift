//
//  DataResponse.swift
//  DemoA
//
//  Created by mr.root on 5/2/23.
//

import Foundation

class DataResponse {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.id = id
        self.name = name
    }
}

class DataCollection {
    var name: String?
    var id: Int?
    var healthTitle: String?
    var lifeTitle: String?
    var medicalTitle: String?
    var virusTitle: String?
    
    init(name: String?, id: Int?, healthTitle: String?, lifeTitle: String?, medicalTitle: String?, virusTitle: String?) {
        self.id = id
        self.name = name
        self.healthTitle = healthTitle
        self.lifeTitle = lifeTitle
        self.medicalTitle = medicalTitle
        self.virusTitle = virusTitle
        
    }
}
