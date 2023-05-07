//
//  TableViewCell2.swift
//  DemoA
//
//  Created by mr.root on 5/2/23.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var newsCollectionview: UICollectionView!
    
    
    
    private var data = [DataCollection]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCollectionView()
    }
    
    func configuraData(_ data: [DataCollection]) {
        self.data = data
        self.newsCollectionview.reloadData()
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        newsCollectionview.delegate = self
        newsCollectionview.dataSource = self
        newsCollectionview.register(UINib(nibName: "newsCell", bundle: nil), forCellWithReuseIdentifier: "newsCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

extension TableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newsCollectionview.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! newsCell
        let item = data[indexPath.row]
        cell.setData(item)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 300)
    }
}
