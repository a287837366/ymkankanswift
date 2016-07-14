//
//  HttpClinetTool.swift
//  swiftkankan
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import Foundation

class HttpClientTool : AFHTTPSessionManager{

    class var sharedInstance : HttpClientTool{
    
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : HttpClientTool? = nil
        }
      
        dispatch_once(&Static.onceToken) {
        
            let clientTools = HttpClientTool(baseURL: NSURL(string: "http://180.76.151.128:8080/"))
            
            clientTools.responseSerializer.acceptableContentTypes?.insert("text/html")
            clientTools.requestSerializer.setValue("application/x-www-form-urlencoded; charset=UTF-8", forHTTPHeaderField: "Content-type")
            
            Static.instance = clientTools
        }
        
        return Static.instance!
    }
    
    func getRequset(url:String, complite:(Int, AnyObject) -> ()) {
        
        self.GET(url, parameters: nil,
            progress: {(NSProgress progress) in
            
            }, success: {(NSURLSessionDataTask task, AnyObject result) in
                
                complite(0, result!)
                
            }, failure: {(NSURLSessionDataTask task, NSError error) in
             
               print("\(error)")
                
        })
        
        
    }


}
