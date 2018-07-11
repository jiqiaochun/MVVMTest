//
//  testBarButtonItem.swift
//  MVVMTest
//
//  Created by qiaochun ji on 2018/7/11.
//  Copyright © 2018年 qiaochun ji. All rights reserved.
//

import UIKit

class testBarButtonItem: UIBarButtonItem {

    var VM = testBarItemViewModel()
    
    weak var controllerTarget : ViewController!
    
    override func awakeFromNib() {
        VM.target = self
        self.target = VM;
        self.action = #selector(VM.testAction)
    }
    
}
