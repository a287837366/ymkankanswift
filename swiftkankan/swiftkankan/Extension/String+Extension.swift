//
//  String+Extension.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

extension String {


    
    func substring(start start:Int, end:Int) -> String{
        
        let stratIndex = self.startIndex.advancedBy(start)
        let endIndex = self.startIndex.advancedBy(end)
        
        return self[Range(start: stratIndex, end: endIndex)]
    }


}
