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
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.id = id
        self.name = name
    }
}
