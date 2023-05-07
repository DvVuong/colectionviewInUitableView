//
//  ViewModel.swift
//  DemoA
//
//  Created by mr.root on 5/2/23.
//

import Foundation
import RxSwift
import RxCocoa

enum URLError: Error {
    case urlNotFound
}

class ViewModel {
    
    var listItem = [GroupListItem]()
    //MARK: Get data
    
    func setData(_ data: DataCollection) {
        var group1 = GroupListItem()
        var typeGroup = ItemType()
        typeGroup.healthTitle = data.healthTitle
        typeGroup.lifeTitle = data.lifeTitle
        group1.listItem.append(typeGroup)
        
        
        var group2 = GroupListItem()
        var type2 = ItemType()
        type2.medicalTitle = data.medicalTitle
        type2.virusTitle = data.virusTitle
        group2.listItem.append(type2)
        
        listItem = [group1, group2]
    }
}

struct ItemType {
    var healthTitle: String?
    var lifeTitle: String?
    var medicalTitle: String?
    var virusTitle: String?
}

struct GroupListItem {
    var listItem = [ItemType]()
}
