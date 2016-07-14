//
//  HomeVC.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

class HomeVC: BaseViewController {
    
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        getNews("0")
    }

    func initView() {
        view.backgroundColor = WHITE_C
        setNavTitle("首页")
    
        homeView.makeFullScreen()
        view.addSubview(homeView)
    }
    
    /***********
     * 获取数据列表
     * param(page) : 分页
     **********/
    //MARK:请求数据列表
    func getNews(page:String) {
        
        weak var wakeSelf = self
        
        let url = "kankanAdmin/GetManhuaListByType?page=\(page)&type=0"
        
        HttpClientTool.sharedInstance.getRequset(url,
           
            complite: { (Int errorCode, AnyObject result) in
                
                if (errorCode == 0) {
                
                    let response = NewsResponse()
                    response.withDict(result as! NSDictionary)
                   
                    wakeSelf?.homeView.setData(response)
                  
                } else {
                
                }
                
            })
    
    }
    
}
