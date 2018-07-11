//
//  ViewController.swift
//  MVVMTest
//
//  Created by qiaochun ji on 2018/7/11.
//  Copyright © 2018年 qiaochun ji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var BarItem: testBarButtonItem!
    
    deinit {
        print("viewcontroller release")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BarItem.controllerTarget = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        self.tableView.separatorInset = .zero
        self.tableView.layoutMargins = .zero
    }

}

