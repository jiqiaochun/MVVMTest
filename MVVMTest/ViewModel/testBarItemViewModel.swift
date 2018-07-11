//
//  testBarItemViewModel.swift
//  MVVMTest
//
//  Created by qiaochun ji on 2018/7/11.
//  Copyright © 2018年 qiaochun ji. All rights reserved.
//

import UIKit

class testBarItemViewModel: NSObject {

    weak var target:testBarButtonItem!
    
    @objc func testAction() -> Void {
        print("click item")
        
//        let vc = secondViewController()
//        target.controllerTarget.navigationController?.pushViewController(vc, animated: true)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "test")
        target.controllerTarget.navigationController?.pushViewController(vc, animated: true)
    }
    
}
