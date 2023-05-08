//
//  SuccessfulAppointmentItemView.swift
//  DemoA
//
//  Created by mr.root on 5/8/23.
//

import UIKit
import SnapKit

class SuccessfulAppointmentItemView: UIView {
    lazy var title: UILabel = UILabel()
    lazy var value: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupUI()
    }
    
    private func setupUI() {
        addSubview(title)
        addSubview(value)
        
        title.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        title.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
        value.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        value.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
        title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
        }
        
        value.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.greaterThanOrEqualTo(title.snp.trailing).offset(16)
        }
        
        updateConstraintsIfNeeded()
    }
    
    func bindDataToView(_ data: AppointmentViewModelItem) {
        self.title.text = data.title
        self.value.text = data.value
        self.value.textColor = data.valueColor
        self.title.textColor = data.valueColor
    }
}


