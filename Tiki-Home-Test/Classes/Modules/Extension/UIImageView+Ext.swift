//
//  UIImageView+Ext.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

//import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    
    func setImageWithURL(url:String?,
                         placeHolderImage:UIImage? = nil,
                         complateDownload:((UIImage?,Error?)-> Void)? = nil)  {
        
        if let _url = url {
            
            self.sd_setImage(with: URL(string: _url),
                             placeholderImage: placeHolderImage,
                             options: [.allowInvalidSSLCertificates,
                                       .retryFailed,
                                       .refreshCached],
                             progress: nil) {(image, error, cacheType, url) in
                                complateDownload?(image,error)
            }
        }else {
            self.image = placeHolderImage
        }
    }
}
