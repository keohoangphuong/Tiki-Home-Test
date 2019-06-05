//
//  APIServices.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import CoreLocation
import CoreData


public typealias ResponseDictionary = [String: Any]
public typealias ResponseArray = [Any]

public func E(_ val: String?) -> String {
    return (val != nil) ? val! : "";
}


extension BaseAPIService {
    
    @discardableResult
    func getListKeywordHot(callback: @escaping APICallback<APIResponse>) -> APIRequest {
        return request(method: .GET,
                       path: API_GET_LIST_KW_HOT,
                       input: .empty,
                       callback: callback);
    }
    
}
