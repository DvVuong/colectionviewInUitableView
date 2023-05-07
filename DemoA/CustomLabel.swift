//
//  CustomLabel.swift
//  DemoA
//
//  Created by mr.root on 5/7/23.
//

import UIKit

public class CustomLabel: UILabel {

   @IBInspectable var topInset: CGFloat = 5.0
   @IBInspectable var bottomInset: CGFloat = 3.0
   @IBInspectable var leftInset: CGFloat = 5.0
   @IBInspectable var rightInset: CGFloat = 5.0
    
    func setupStyle() {
        self.backgroundColor = UIColor(named: "Color0053DA0D")
        self.textAlignment = .center
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func drawText(in rect: CGRect) {
      let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
       super.drawText(in: rect.inset(by: insets))
   }

    public override var intrinsicContentSize: CGSize {
      get {
         var contentSize = super.intrinsicContentSize
         contentSize.height += topInset + bottomInset
         contentSize.width += leftInset + rightInset
         return contentSize
      }
   }
}
