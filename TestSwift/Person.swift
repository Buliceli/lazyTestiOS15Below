//
//  Person.swift
//  TestSwift
//
//  Created by LD on 2021/9/16.
//

import UIKit

protocol Housekeeping {
    func study();
}

class Person: NSObject {

    var nurse : Housekeeping
    
    init(nurse: Housekeeping) {
        self.nurse = nurse
    }
    
    func studyNormal(){
        self.nurse.study()
    }
}
