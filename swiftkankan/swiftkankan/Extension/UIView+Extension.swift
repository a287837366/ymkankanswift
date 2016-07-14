//
//  UIView+Extension.swift
//  swiftkankan
//
//  Created by apple on 16/7/11.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

extension UIView {
    
    //沾满屏幕
    func makeFullScreen(){
        
        let rect = CGRectMake(0, 0, Screen_W, Screen_H)
        self.frame = rect
    
    }

    func x() -> CGFloat { return self.frame.origin.x }
    func y() -> CGFloat { return self.frame.origin.y }
    func width() -> CGFloat { return self.frame.size.width }
    func height() -> CGFloat { return self.frame.size.height }

    func setX(x:CGFloat) {
        var rect = self.frame
        rect.origin.x = x
        self.frame = rect
    }
    
    func setY(y:CGFloat) {
        var rect = self.frame
        rect.origin.y = y
        self.frame = rect
    }
    
    func setWidth(width:CGFloat) {
        var rect = self.frame
        rect.size.width = width
        self.frame = rect
    }
    
    func setHeight(height:CGFloat) {
        var rect = self.frame
        rect.size.height = height
        self.frame = rect
    }
    
    //设置圆角
    func setRadius(radius:CGFloat) {
        self.layer.cornerRadius = radius
    }
    
}
