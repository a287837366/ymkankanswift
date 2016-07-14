//
//  UILable+Extension.swift
//  swiftkankan
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

extension UILabel {

    convenience init(font fontSize:CGFloat, color textColor:UIColor){
        self.init()
        
        self.font = UIFont.systemFontOfSize(fontSize)
        self.textColor = textColor
    }
    
//    public class func initByFontColor(font fontSize:CGFloat, color textColor:UIColor) -> UILabel{
//    
//        let newLable = UILabel()
//        
//        newLable.font = UIFont.systemFontOfSize(fontSize)
//        newLable.textColor = textColor
//    
//        return newLable
//    }


}
