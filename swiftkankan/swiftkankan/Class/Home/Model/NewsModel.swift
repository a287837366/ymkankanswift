//
//  NewsModel.swift
//  swiftkankan
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import Foundation

class NewsResponse {

    var count:String?
    var error:String?
    var msg:String?
    
    var dataArray:Array<NewsModel>?
    
    func withDict(dict:NSDictionary!){
        
        msg = dict["msg"] as? String
        error = dict["error"] as? String
        count = dict["count"] as? String
       
        dataArray = Array<NewsModel>()
  
        let array = (dict["data"] as? Array<AnyObject>)
        
        for (var i = 0; i < array!.count; i++ ){
           
            let newsModel = NewsModel()
            newsModel.withDict(array![i] as! NSDictionary)
            dataArray?.append(newsModel)

        }
        
        
    }

}

class NewsModel {

    var m_createTime:String?
    var m_fromdata:String?
    var m_icon:String?
    var m_title:String?
    var m_type:String?
    var m_uid:String?
    var t_images:String?
    var u_phoneno:String?
    var imageArray:Array<String>?
    
    func withDict(dict:NSDictionary!){
        
        m_createTime = dict["m_createTime"] as? String
        m_fromdata = dict["m_fromdata"] as? String
        m_icon = dict["m_icon"] as? String
        m_title = dict["m_title"] as? String
        m_type = dict["m_type"] as? String
        m_uid = dict["m_uid"] as? String
        t_images = dict["t_images"] as? String
        u_phoneno = dict["u_phoneno"] as? String

        imageArray = t_images?.componentsSeparatedByString(",")
  
    }
    
}
