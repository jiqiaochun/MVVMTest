//
//  testTableViewModel.swift
//  MVVMTest
//
//  Created by qiaochun ji on 2018/7/11.
//  Copyright © 2018年 qiaochun ji. All rights reserved.
//

import UIKit

class testTableViewModel: NSObject,UITableViewDelegate,UITableViewDataSource {
    var target:testTableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        let bottomView = cell.contentView.viewWithTag(2000)
        let image = bottomView?.viewWithTag(2001)
        let rect = bottomView?.convert((bottomView?.bounds)!, to: nil)
        var Y = UIScreen.main.bounds.size.height - (rect?.origin.y)! - 600
        Y*=0.2
        if Y > 0 {
            Y = 0
        }
        
        if Y < -100 {
            Y = -100
        }
        
        image?.frame.origin.y = Y
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    // cell分割线距离左边设置为0
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = .zero
        cell.layoutMargins = .zero
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for cell in self.target.visibleCells {
            let bottomView = cell.contentView.viewWithTag(2000)
            let image = bottomView?.viewWithTag(2001)
            let rect = bottomView?.convert((bottomView?.bounds)!, to: nil)
            var Y = UIScreen.main.bounds.size.height - (rect?.origin.y)! - 600
            Y*=0.2
            if Y > 0 {
                Y = 0
            }
            
            if Y < -100 {
                Y = -100
            }
            
            image?.frame.origin.y = Y
        }
        
    }
    
}
