//
//  UIColor+Extension.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit


extension UIColor {

    public class func colorHex(color:String) -> UIColor {

        //删除字符串中的空格
        var cString = color.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        //颜色编码不能少于6位数
        if (cString.characters.count < 6) { return UIColor.clearColor() }

        //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
        if (cString.hasPrefix("0X")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(2))
        }

        //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
        }
        
        if (cString.characters.count != 6) { return UIColor.clearColor() }

        var r:UInt32 = 0
        NSScanner(string: cString.substring(start: 0, end: 2)).scanHexInt(&r)
        
        var g:UInt32 = 0
        NSScanner(string: cString.substring(start: 2, end: 4)).scanHexInt(&g)
        
        var b:UInt32 = 0
        NSScanner(string: cString.substring(start: 4, end: 6)).scanHexInt(&b)
        
        return UIColor(
            red: CGFloat(r) / 255.0,
            green: CGFloat(g) / 255.0,
            blue: CGFloat(b) / 255.0,
            alpha: CGFloat(1.0)
        )
        
    }

}