//
//  CustomItemView.swift
//  DemoA
//
//  Created by mr.root on 5/4/23.
//

import UIKit
import SnapKit

class CustomItemView: UIView {
    lazy var healthTitleLabel: UILabel = CustomLabel()
    lazy var lifeTitleLabel: UILabel = CustomLabel()
    lazy var medicalTitelLabel: UILabel = CustomLabel()
    lazy var virusTitleLable: UILabel = CustomLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupUI()
    }
    
   private func setupUI() {
       addSubview(healthTitleLabel)
       addSubview(lifeTitleLabel)
       addSubview(medicalTitelLabel)
       addSubview(virusTitleLable)
       
       healthTitleLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
       healthTitleLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
       healthTitleLabel.numberOfLines = 0
       
       lifeTitleLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
       lifeTitleLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
       lifeTitleLabel.numberOfLines = 0
       
       medicalTitelLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
       medicalTitelLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
       medicalTitelLabel.numberOfLines = 0
       
       virusTitleLable.setContentHuggingPriority(.defaultHigh, for: .horizontal)
       virusTitleLable.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
       virusTitleLable.numberOfLines = 0
       
        healthTitleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-5)
        }
       
       lifeTitleLabel.snp.makeConstraints { make in
           make.top.equalToSuperview().offset(5)
           make.size.equalTo(healthTitleLabel)
           make.leading.greaterThanOrEqualTo(healthTitleLabel.snp.trailing).offset(10)
       }
       
       medicalTitelLabel.snp.makeConstraints { make in
           make.top.equalToSuperview().offset(5)
           make.leading.equalToSuperview()
           make.bottom.equalToSuperview().offset(-5)
       }
       
       virusTitleLable.snp.makeConstraints { make in
          make.top.equalToSuperview().offset(5)
           make.size.equalTo(medicalTitelLabel)
           make.leading.greaterThanOrEqualTo(medicalTitelLabel.snp.trailing).offset(10)
       }
       
       updateConstraintsIfNeeded()
    }
    
    func bindData(_ model: ItemType ) {
        self.healthTitleLabel.isHidden = (model.healthTitle == nil) ? true : false
        self.lifeTitleLabel.isHidden = (model.lifeTitle == nil) ? true : false
        self.medicalTitelLabel.isHidden = (model.medicalTitle == nil) ? true : false
        self.virusTitleLable.isHidden = (model.virusTitle == nil) ? true : false
        
        self.healthTitleLabel.text = model.healthTitle ?? ""
        self.lifeTitleLabel.text = model.lifeTitle ?? ""
        self.medicalTitelLabel.text = model.medicalTitle ?? ""
        self.virusTitleLable.text = model.virusTitle ?? ""
    }
}
