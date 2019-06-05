//
//  APIResponse.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit
import ObjectMapper

class APIResponse: Mappable {
    
    var message:String?
    var status:Int?
    var keywords: [KeywordModel]?
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
        status <- map["status"]
        keywords <- map["keywords"]
    }
}
