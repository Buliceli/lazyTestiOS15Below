//
//  LDButton.swift
//  TestSwift
//
//  Created by LD on 2021/8/12.
//

import UIKit

class LDButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("LDButton 内存释放。。。")
    }

}
