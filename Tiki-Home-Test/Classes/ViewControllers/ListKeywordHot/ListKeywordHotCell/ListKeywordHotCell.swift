//
//  ListKeywordHotCell.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit

class ListKeywordHotCell: UICollectionViewCell {
    
    @IBOutlet weak var imvBanner : UIImageView?
    @IBOutlet weak var lblKeyword: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setDataForCell(model:KeywordModel, color:UIColor) {
        imvBanner?.setImageWithURL(url: model.icon, placeHolderImage: nil, complateDownload: nil)
        lblKeyword?.text = model.keyword
        lblKeyword?.backgroundColor = color
        lblKeyword?.layer.cornerRadius = 5.0
    }
}
