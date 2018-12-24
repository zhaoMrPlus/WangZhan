//
//  WZMainViewController.swift
//  Wangzhan（swfit）
//
//  Created by 毛蛋 on 2018/1/18.
//  Copyright © 2018年 zhb. All rights reserved.
//

import UIKit

class WZMainViewController: UIViewController {
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.red
        self.title = "网展"
        self.view.backgroundColor = UIColor.red
        var tap = UITapGestureRecognizer()
        tap = UITapGestureRecognizer.init(target: self, action: #selector(tapDown(sender:)))
        self.navigationController?.navigationBar.addGestureRecognizer(tap)
        //创建collection
        // Do any additional setup after loading the view.
//        self.collectionView = UICollectionView.init(frame: self.view.bounds)
//        self.view.addSubview(self.collectionView)
//        self.collectionView.dataSource = self as! UICollectionViewDataSource
//        self.collectionView.delegate = self as! UICollectionViewDelegate
//
//        let layout = UICollectionViewFlowLayout.init()
//        layout.itemSize = CGSize.init(width: 100, height: 100)
//        layout.minimumLineSpacing = 30
//        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 30, bottom: 0, right: 30)
//        self.collectionView.collectionViewLayout = layout
//        self.collectionView.register(WZCell.self, forCellWithReuseIdentifier: "WZCell")
    }
    @objc func tapDown(sender:UITapGestureRecognizer){
        
        var nextVC = WZMainDetailViewController()
        nextVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextVC, animated: true)
        self.hidesBottomBarWhenPushed = false
    }
    //MARK  collectionDatasource  delegate
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
    //footerView必须的方法
//    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
//        //判断如果 kind 是footerView类型
//      var cell = WZCell()
//        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WZCell", for: indexPath as IndexPath) as! WZCell
//        return cell
//    }
    //footerView的大小
    //footview
    //
    
    
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destinationViewController.
         Pass the selected object to the new view controller.
    }
    */
}
