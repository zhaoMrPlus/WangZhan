//
//  TabbarViewController.swift
//  Wangzhan（swfit）
//
//  Created by 毛蛋 on 2018/1/18.
//  Copyright © 2018年 zhb. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    var scrrenWidth :CGFloat?
    var screenHeight :CGFloat?
    
    let tabbarWidth :CGFloat = 64
    let tabbarHeight :CGFloat = 49
    let tabbarViewHeight :CGFloat = 60

    var tabbuttons = [UIButton]()
    var imageArr  = ["home","bar-chart","globe","tab1_n"]
    var ImageSelectArr = ["home2","bar-chart2","globe2","tab1_h"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let screenFrame = UIScreen.main.bounds
        scrrenWidth = screenFrame.width
        screenHeight = screenFrame.height
        self.view.backgroundColor=UIColor.white
        self.tabBar.isHidden = true
        
        initControllers()
        customTabbar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func customTabbar() -> Void
    {
        let tabbarOffsetX = scrrenWidth!/4
        let tabbarX = tabbarOffsetX/2 - tabbarWidth/2
        let tabbarY = tabbarViewHeight/2 - tabbarHeight/2
        let tabbarView = UIView(frame:CGRect(x:0,y:screenHeight! - tabbarViewHeight,width:scrrenWidth!,height:tabbarViewHeight))
        tabbarView.backgroundColor=UIColor.cyan
        
        self.view.addSubview(tabbarView)
        
        for index in 0..<imageArr.count {
            let tabBar_X = (CGFloat)(index) * tabbarOffsetX
            let btn = UIButton(frame: CGRect(x:(CGFloat)(tabbarX + tabBar_X), y:(CGFloat)(tabbarY), width:tabbarWidth, height:tabbarHeight))
            btn.setImage(UIImage(named: imageArr[index]),for:.normal)
            btn.addTarget(self, action: #selector(btnClick(sender:)), for:.touchUpInside)
            tabbarView.addSubview(btn)
            tabbuttons.append(btn)
            btn.tag = index + 100;
        }
        
        
        
        
    }
    @objc func btnClick(sender:UIButton?) {
        print("xxxx");
        let indexSel = (sender?.tag)! - 100
        self.selectedIndex = indexSel
        for index in 0..<tabbuttons.count
        {
            if(index == indexSel)
            {
                tabbuttons[indexSel].setImage(UIImage(named: ImageSelectArr[indexSel]), for:.selected)
            }else{
                tabbuttons[index].setImage(UIImage(named: imageArr[index]), for:.normal)
            }
        }

    }

    func initControllers()
    {
    
        let firstTabView = WZMainViewController()
        let secondTabView = WZGlobeViewController()
        let thirdTabView = WZMessageViewController()
        let fourTabView = WZMyViewController()
        var viewArr = [firstTabView,secondTabView,thirdTabView,fourTabView]
        var viewCtlArr = [AnyObject]()
            for index in 0..<viewArr.count
            {
                if(index != 3)
                {
                    let navController = UINavigationController(rootViewController: viewArr[index])
                    viewCtlArr.append(navController)
                }else{
                    viewCtlArr.append(viewArr[index])
                }
            }
            self.viewControllers = viewCtlArr as! [ViewController]

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
