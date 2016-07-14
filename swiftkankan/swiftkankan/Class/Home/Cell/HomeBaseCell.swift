//
//  HomeBaseCell.swift
//  swiftkankan
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit

let BaseCell_H:CGFloat = 99.5

class HomeBaseCell: UITableViewCell {
    
    let mainView = UIView()
    let leftImage = UIImageView()
    let titleLable = UILabel(font: 14, color: UIColor.grayColor())
    let timeLable = UILabel(font: 11, color: UIColor.lightGrayColor())

    class func initCell(tableview:UITableView) -> HomeBaseCell{
        
        let cellIndentifier = "HomeBaseCell";
        
        var cell = tableview.dequeueReusableCellWithIdentifier(cellIndentifier) as? HomeBaseCell

        if (cell == nil) {
            cell = HomeBaseCell.init(style: .Default, reuseIdentifier: cellIndentifier)
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
        mainView.setHeight(BaseCell_H)
        
        contentView.addSubview(mainView)
        
        leftImage.setX(10)
        leftImage.setY(10)
        leftImage.setWidth(80)
        leftImage.setHeight(80)

        mainView.addSubview(leftImage)
        
        titleLable.setX(BaseCell_H)
        titleLable.setY(30)
        titleLable.setWidth(Screen_W - BaseCell_H - 20)
        titleLable.setHeight(BaseCell_H - 60)
        
        mainView.addSubview(titleLable)
        
        timeLable.setX(Screen_W - 85)
        timeLable.setY(BaseCell_H - 22)
        timeLable.setWidth(75)
        timeLable.setHeight(12)
        timeLable.textAlignment = .Right
        
        mainView.addSubview(timeLable)
    }
    
    //MARK:显示数据时候用的
    //TODO:添加一个 @param 去掉测试数据
    func setModel(model:NewsModel) {

        if  (model.m_icon?.characters.count == 0){
            
            leftImage.image = UIImage(named: getDefualtImage(model.m_type!));
            
        } else {
          
            leftImage.sd_setImageWithURL(NSURL(string: model.m_icon!
                ), placeholderImage: UIImage(named: "qita_defualt_img"))
       
        }

        titleLable.text = model.m_title
        timeLable.text = model.m_createTime
        
    }
    
    func getDefualtImage(type:String) -> String{
    
        var returnType = "qita_defualt_img"
        
        switch type {
            
        case "1":
            returnType = "zhanpin_defualt_img"
            break
      
        case "2":
            returnType = "qiuzhi_defualt_img"
            break
       
        case "3":
            returnType = "fangcan_defualt_img"
            break
       
        case "4":
            returnType = "congwu_defualt_img"
            break

        default:

            break
        
        }
      
        return returnType
    }
    
}
