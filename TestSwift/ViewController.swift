//
//  ViewController.swift
//  TestSwift
//
//  Created by LD on 2021/8/12.
//

import UIKit

class ViewController: UIViewController {

     lazy var tableView: UITableView = {
        let mTableView = UITableView()
        mTableView.frame = CGRect(x: 0, y:  0, width: 380, height: 600)
        mTableView.dataSource = self
        mTableView.delegate = self
        mTableView.register(SACReminderManTableViewCell.self, forCellReuseIdentifier: "SACReminderManTableViewCell")
        return mTableView
    }()
    
//    @objc func nextButtonClicked(){
//        print("额 666 。。。")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        view.addSubview(tableView)
        return
    }
    
    
    /*
     #if false
     let a = test(10, 20, 30) { item1, item2, item3 in
         item1 + item2 == item3
     }
     print(a)
     view.backgroundColor = UIColor.lightGray
     
     return
     let s = Teach()
     
     let p = Person(nurse: s)
     
     p.studyNormal()
     
     return;
     #endif
    
     let value = ifelse(false, valueTrue: 100, valueFalse: 0)
     print("哈哈\(value)")
     
     let value2 = ifelse2(true) {
         99
     } valueFalse: {
         1
     }
     print("狗尾续貂\(value2)")
     */
    func test( _ a: Int, _ b: Int, _ c: Int, by: (_ item1:Int,_ item2 : Int, _ item3: Int) -> Bool) ->Bool{
        by(a, b, c)
    }
 
    func ifelse<T>(_ condition: Bool,valueTrue: @autoclosure()->T,valueFalse: @autoclosure()->T) -> T {
        condition ? valueTrue() : valueFalse()
    }
    
    func ifelse2<T>(_ condition: Bool, valueTrue: ()->T,valueFalse:()->T) -> T {
        condition ? valueTrue() : valueFalse()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SACReminderManTableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("888")
    }
}
