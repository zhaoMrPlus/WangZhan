//
//  WZCell.swift
//  Wangzhan（swfit）
//
//  Created by 毛蛋 on 2018/1/22.
//  Copyright © 2018年 zhb. All rights reserved.
//

import UIKit

class WZCell: UICollectionViewCell {
    var label = UILabel()
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        label = UILabel.init(frame:self.bounds)
        self.addSubview(label)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not benn implemented")
    }
    
}
