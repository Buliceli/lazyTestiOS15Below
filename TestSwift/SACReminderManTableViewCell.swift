//
//  SACReminderManTableViewCell.swift
//  Sunachousekeeper
//
//  Created by MrRight on 2021/8/10.
//  Copyright © 2021 SUNACWY. All rights reserved.
//

import UIKit
class SACReminderManTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.reminderButton)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.backgroundColor = UIColor.purple
    }
    /*
     @objc 标识走runtime的消息发送机制
     而swift的方法时走C++的虚表
     很明显这就是个闭包赋值的操作 why 点击事件被抛到控制器里去了呢！
     不加lazy 每次都分配内存去创建
     */
     private var  reminderButton: LDButton = { ()-> LDButton in
        let button = LDButton(frame: CGRect(x: 10, y: 45, width: 100, height: 30))
        button.backgroundColor = UIColor.yellow
        button.addTarget(self, action: #selector(nextButtonClicked), for: .touchUpInside)
         print("执行次数----")
        return button
    }()
    
    @objc func nextButtonClicked(btn:LDButton) {
        print("999")
    }
}


