//
//  ListKeywordHotCell.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit

@objc protocol ListKeywordHotCellDelegate {
    @objc optional func didPressKeyword(listKeywordHotCell: ListKeywordHotCell, keyword: String)
}

class ListKeywordHotCell: UICollectionViewCell {
    
    @IBOutlet weak var imvBanner : UIImageView?
    @IBOutlet weak var lblKeyword: UILabel?
    
    var _model:KeywordModel?
    
    weak var listKeywordHotCellDelegate: ListKeywordHotCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setDataForCell(model:KeywordModel, color:UIColor) {
        _model = model
        imvBanner?.setImageWithURL(url: model.icon, placeHolderImage: nil, complateDownload: nil)
        lblKeyword?.text = model.keyword
        lblKeyword?.backgroundColor = color
        lblKeyword?.layer.cornerRadius = 5.0
    }
    
    @IBAction func onBtnKeyword(btn:UIButton!) {
        listKeywordHotCellDelegate?.didPressKeyword?(listKeywordHotCell: self, keyword: _model?.keyword ?? "")
    }
}
