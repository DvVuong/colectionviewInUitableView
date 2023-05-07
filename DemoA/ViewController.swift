//
//  ViewController.swift
//  DemoA
//
//  Created by mr.root on 5/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listNewTableView: UITableView!
    
    private var arrays = [CellModel]()
    private let viewModel: ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
        
       
        arrays.append(.colectionView(model: [DataCollection(name: "Collection", id: 1,
                                                            healthTitle: "Sức khoẻ",
                                                            lifeTitle: "Đời Sống",
                                                            medicalTitle: nil, virusTitle: nil),
                                             DataCollection(name: "Collection", id: 1,
                                                            healthTitle: nil,
                                                            lifeTitle: nil,
                                                            medicalTitle: "y tế", virusTitle: "Covid-19")
                                        ]))
        
        
        arrays.append(.list(model: [DataResponse(name: "TableView", id: 1),
                                    DataResponse(name: "TableView2", id: 2),
                                    DataResponse(name: "TableView3", id: 3),
                                    DataResponse(name: "TableView4", id: 4),
                                    DataResponse(name: "TableView5", id: 5),
                                    DataResponse(name: "TableView6", id: 6),
                                    DataResponse(name: "TableView7", id: 7),
                                    DataResponse(name: "TableView8", id: 8),
                                    DataResponse(name: "TableView9", id: 9),
                                    DataResponse(name: "TableView10", id: 10)]))
        
    }
    
    private func setUpTable() {
        listNewTableView.delegate = self
        listNewTableView.dataSource = self
        listNewTableView.estimatedRowHeight = UITableView.automaticDimension
        listNewTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "newsTableViewCell")
    
        listNewTableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        listNewTableView.reloadData()
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrays.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch arrays[section] {
        case .list(let model): return model.count
        case .colectionView(_): return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch arrays[indexPath.section] {
        case .colectionView(let model):
            let cell = listNewTableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            cell.configuraData(model)
            cell.setupCollectionView()
            return cell
            
        case .list(let models):
            let cell = listNewTableView.dequeueReusableCell(withIdentifier: "newsTableViewCell", for: indexPath) as! NewsTableViewCell
            let item = models[indexPath.row]
            cell.id.text = "\(item.id)"
            cell.name.text = item.name
            return cell
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch arrays[indexPath.section] {
        case .colectionView(_ ): return 300
        case .list(_ ): return UITableView.automaticDimension
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = GeneralExaminationViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        print("vuongdv Tap tap")
    }
}
