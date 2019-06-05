//
//  KeywordModel.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit
import ObjectMapper

class KeywordModel: NSObject,Mappable {
    
    var keyword:String?
    var icon:String?
    
    required init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map) {
        keyword <- map["keyword"]
        icon <- map["icon"]
    }
}
