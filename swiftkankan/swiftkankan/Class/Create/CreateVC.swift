//
//  CreateVC.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

class CreateVC: BaseViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    func initView() {
        view.backgroundColor = WHITE_C
        setNavTitle("创建")
    }

}
