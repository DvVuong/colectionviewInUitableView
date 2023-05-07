//
//  newsCell.swift
//  DemoA
//
//  Created by mr.root on 5/3/23.
//

import UIKit

class newsCell: UICollectionViewCell {

    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var tileButton: UIButton!
    let viewModel = ViewModel()
    //@IBOutlet weak var lableNews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       bindDataToview()
    }
    
    func setData(_ data: DataCollection) {
        viewModel.setData(data)
        tileButton.setTitle(data.name, for: .normal)
    }
    
    func  bindDataToview() {
        stackView.arrangedSubviews.forEach { subView in
            subView.removeFromSuperview()
        }
        
        stackView.axis = .vertical
        stackView.spacing = 0
        for group in viewModel.listItem {
            let groupStackView = UIStackView()
            groupStackView.axis = .vertical
            groupStackView.spacing = 2
            groupStackView.backgroundColor = .green

            let listItem = group.listItem

            for item in listItem {
                let itemView = CustomItemView()
                itemView.bindData(item)
                groupStackView.addArrangedSubview(itemView)
            }
            stackView.addArrangedSubview(groupStackView)
        }
    }
}
