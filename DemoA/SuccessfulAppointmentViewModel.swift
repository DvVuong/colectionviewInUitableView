//
//  SuccessfulAppointmentViewModel.swift
//  DemoA
//
//  Created by mr.root on 5/8/23.
//

import Foundation
import UIKit

class SuccessfulAppointmentViewModel  {
    var listItems = [GroupListAppointmentItem]()
    
    func setdata(_ data: ItemModel ) {
        //Group1
        var group1 = GroupListAppointmentItem()
        var date = AppointmentViewModelItem()
        date.title = "Ngày khám"
        date.value = data.date
        group1.listItem.append(date)
        
        //Group2
        var group2 = GroupListAppointmentItem()
        var hour = AppointmentViewModelItem()
        hour.title = "Giờ khám"
        hour.value = data.hour
        group2.listItem.append(hour)
        //Group3
        var group3 = GroupListAppointmentItem()
        var time = AppointmentViewModelItem()
        time.title = "Thời gian tư vấn"
        time.value = data.time
        group3.listItem.append(time)
        
        //Group4
        
//        var group4 = GroupListAppointmentItem()
//        var contact = AppointmentViewModelItem()
//        contact.title = "Hình thức liên lạc"
//        contact.value = "Ứng dụng Medda"
//
//        group4.listItem.append(contact)
        
        listItems = [group1, group2, group3]
    }
    
}

struct AppointmentViewModelItem {
    var title: String?
    var value: String?
    var titleColor: UIColor = .black
    var valueColor: UIColor = .black
}

struct GroupListAppointmentItem {
    var listItem = [AppointmentViewModelItem] ()
}


class ItemModel {
    var date: String
    var hour: String
    var time: String
    init(date: String, hour: String, time: String) {
        self.time = time
        self.date = date
        self.hour = hour
    }
}
