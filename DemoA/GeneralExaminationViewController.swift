//
//  GeneralExaminationViewController.swift
//  DemoA
//
//  Created by mr.root on 5/7/23.
//

import UIKit
import RxGesture
import RxSwift

class GeneralExaminationViewController: UIViewController {
    @IBOutlet weak var basicPackageView: UIView!
    @IBOutlet weak var advancedPackageView: UIView!
    @IBOutlet weak var enterpriseBasicPackage: UIView!
    @IBOutlet weak var enterpriseEnhancementPackage: UIView!
    
    private let bag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(true, animated: false)
        setupTapGesture()
    }
    
    
    private func setupTapGesture() {
        basicPackageView.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                guard let `self` = self else { return }
                print("vuong tap 1")
                
            })
            .disposed(by: bag)
        advancedPackageView.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                guard let `self` = self else { return }
                print("vuong tap 2")
                
            })
            .disposed(by: bag)
        enterpriseBasicPackage.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                guard let `self` = self else { return }
                print("vuong tap 3")
                
            })
            .disposed(by: bag)
        enterpriseEnhancementPackage.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                guard let `self` = self else { return }
                print("vuong tap 4")
                
            })
            .disposed(by: bag)
    }
}
