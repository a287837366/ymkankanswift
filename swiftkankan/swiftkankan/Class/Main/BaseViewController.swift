//
//  BaseViewController.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        initView()
        initNavagation()
    }
    
    private func initView() {
    
        view.addSubview(UIView(frame: CGRectZero))
 
    }
    
    //  设置导航页样式
    private func initNavagation() {
        
        var dict:Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()
        dict[NSForegroundColorAttributeName] = UIColor.colorHex("#666666")
 
        navigationController?.navigationBar.titleTextAttributes = dict
        navigationController?.navigationBar.tintColor = UIColor.colorHex("#666666")

    }
    
    //  设置Navi标题
    func setNavTitle(title:String) {
        navigationItem.title = title
    }
    
    //  返回
    func navgationBack(animated: Bool) {
        navigationController?.popViewControllerAnimated(animated)
    }

}
