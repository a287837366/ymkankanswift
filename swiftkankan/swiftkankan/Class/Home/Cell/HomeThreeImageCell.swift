//
//  HomeThreeImageCell.swift
//  swiftkankan
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

let HomeThreeCell_H = 60.0 + Screen_W / 3 + 32.0

class HomeThreeImageCell: UITableViewCell {
    
    let mainView:UIView = UIView()

    
    class func initCell(tableview:UITableView) -> HomeThreeImageCell{
        
        let cellIndentifier = "HomeThreeImageCell";
        
        var cell = tableview.dequeueReusableCellWithIdentifier(cellIndentifier) as? HomeThreeImageCell
        
        if (cell == nil) {
            cell = HomeThreeImageCell.init(style: .Default, reuseIdentifier: cellIndentifier)
            cell?.selectionStyle = .None
            
            cell?.initView()
        }
        
        return cell!
    }

    //MARK:初始化
    func initView() {
    
        mainView.setX(0)
        mainView.setY(0)
        mainView.setWidth(Screen_W)
        mainView.setHeight(HomeThreeCell_H)
        mainView.backgroundColor = UIColor.redColor()
        
        contentView.addSubview(mainView)
    }


}
