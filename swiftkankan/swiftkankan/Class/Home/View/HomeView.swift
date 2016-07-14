//
//  HomeView.swift
//  swiftkankan
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

import UIKit


class HomeView: UIView , UITableViewDelegate, UITableViewDataSource {
    
    let mainTable = UITableView()
    
    var dataArray = Array<NewsModel>()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initTableView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(respnse:NewsResponse){
        dataArray.appendContentsOf(respnse.dataArray!)
        
        mainTable.reloadData()
    }
    
    
    //初始化TableView
    private func initTableView() {
        mainTable.delegate = self
        mainTable.dataSource = self
        mainTable.separatorStyle = .None
        
        mainTable.setHeight(Screen_H - 114)
        mainTable.setWidth(Screen_W)
        mainTable.setX(0)
        mainTable.setY(64)
        mainTable.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        addSubview(mainTable)
    }
    
    //MARK: UITableViewDelegate, UITableViewDataSource
    //TODO:需要传递给VC点击事件
    //点击事件
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(">>>>>\(indexPath.row)")
        
    }
    
    //返回数量
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return dataArray.count
    }
    
    //返回高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if (dataArray[indexPath.row].imageArray?.count < 3) {
            
            return BaseCell_H
        
        } else {
        
            return HomeThreeCell_H
        }
        
        
    }
    
    //自定义Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        if (dataArray[indexPath.row].imageArray?.count < 3) {
            
            let cell = HomeBaseCell.initCell(tableView)
           
            cell.setModel(dataArray[indexPath.row])
            
            return cell
            
        } else {
            
            let cell = HomeThreeImageCell.initCell(tableView)
            
            return cell
        }

  
    }
    
}
