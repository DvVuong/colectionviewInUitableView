//
//  newsCell.swift
//  DemoA
//
//  Created by mr.root on 5/3/23.
//

import UIKit

class newsCell: UICollectionViewCell {

    @IBOutlet weak var subview: UIView!
    @IBOutlet weak var lableNews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.subview.layer.cornerRadius = 8
        self.subview.layer.borderWidth = 1
        self.subview.layer.borderColor = UIColor.black.cgColor
    }
    
    func setData(_ data: DataCollection) {
        print("vuongdv: \(data.name)")
        lableNews.text = data.name
        if data.name == "Collection2" {
            self.subview.backgroundColor = .red
            
        }else {
            self.subview.backgroundColor = .green
        }
    }
}
