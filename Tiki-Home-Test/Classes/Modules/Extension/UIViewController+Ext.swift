//
//  UIViewController+Ext.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit
import SVProgressHUD

extension UIViewController {
    
    func showLoading() {
        SVProgressHUD.show()
    }
    
    func hideLoading() {
        SVProgressHUD.dismiss()
    }
}
