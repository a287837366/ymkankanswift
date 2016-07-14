//
//  MainTabVC.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

class MainTabVC: UITabBarController {
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        initView()
        initControllers()
   
    }
    
    func initView () {
    
        view.backgroundColor = WHITE_C
        tabBar.tintColor = MAIN_C
        
    }
    
    func initControllers() {

        setupChildVC( HomeVC() , image: "tabBar_essence_icon", selectImage: "tabBar_essence_click_icon", title: "精华" )
        setupChildVC( CreateVC() , image: "tabBar_publish_icon", selectImage: "tabBar_publish_click_icon", title: "发布" )
        setupChildVC( MeVC() , image: "tabBar_me_icon", selectImage: "tabBar_me_click_icon", title: "我" )
    }
    
    
    func setupChildVC(childVC:UIViewController, image:String, selectImage:String, title:String) {
    
        let viewC = childVC
        
        viewC.tabBarItem.title = title
//        viewC.view.backgroundColor = UIColor.blackColor()
        
        viewC.tabBarItem.image = UIImage(named: image);
        viewC.tabBarItem.selectedImage = UIImage(named: selectImage);
        viewC.tabBarItem.title = title;
        
        let navi = UINavigationController(rootViewController: viewC)
        
        addChildViewController(navi)
    }
    

}
