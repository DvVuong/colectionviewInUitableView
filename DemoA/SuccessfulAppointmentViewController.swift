//
//  SuccessfulAppointmentViewController.swift
//  DemoA
//
//  Created by mr.root on 5/8/23.
//

import UIKit
import RxSwift

class SuccessfulAppointmentViewController: UIViewController {

    
    @IBOutlet weak var contentStackView: UIStackView!
    private var viewModel: SuccessfulAppointmentViewModel = SuccessfulAppointmentViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
        compressDataToView()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    private func getdata() {
        let data = [ItemModel(date: "8/8/2023", hour: "9:00 AM", time: "30 phút")]
        for i in data  {
            viewModel.setdata(i)
        }
    }
    
    private func compressDataToView() {
        contentStackView.arrangedSubviews.forEach { subView in
            subView.removeFromSuperview()
        }
        
        contentStackView.axis = .vertical
        contentStackView.spacing = 10
       
        
        for group in viewModel.listItems {
            let groupStackView = UIStackView()
            groupStackView.axis = .horizontal
        
            let listItem = group.listItem
            
            for item in listItem {
                let itemView = SuccessfulAppointmentItemView()
                itemView.bindDataToView(item)
                groupStackView.addArrangedSubview(itemView)
            }
            
            contentStackView.addArrangedSubview(groupStackView)
        }
    }
}
