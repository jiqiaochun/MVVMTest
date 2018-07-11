//
//  testTableView.swift
//  MVVMTest
//
//  Created by qiaochun ji on 2018/7/11.
//  Copyright © 2018年 qiaochun ji. All rights reserved.
//

import UIKit

class testTableView: UITableView {

    var VM = testTableViewModel()
    
    override func awakeFromNib() {
        
        self.tableFooterView = UIView()
        self.estimatedRowHeight = 60
        self.rowHeight = UITableViewAutomaticDimension
        self.separatorInset = .zero
        
        VM.target = self
        self.delegate = VM
        self.dataSource = VM
    }
}
