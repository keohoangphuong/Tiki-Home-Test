//
//  ListKeywordHotVC.swift
//  Tiki-Home-Test
//
//  Created by Keo Hoang Phuong on 6/4/19.
//  Copyright © 2019 Keo Hoang Phuong. All rights reserved.
//

import UIKit

class ListKeywordHotVC: UIViewController {
    
    @IBOutlet weak var collectionView : UICollectionView?
    
    private var items:[KeywordModel] = []
    
    private let arrColor:[UIColor] = [UIColor(hex: "#16702e"),
                                    UIColor(hex: "#005a51"),
                                    UIColor(hex: "#996c00"),
                                    UIColor(hex: "#5c0a6b"),
                                    UIColor(hex: "#006d90"),
                                    UIColor(hex: "#974e06"),
                                    UIColor(hex: "#99272e"),
                                    UIColor(hex: "#89221f"),
                                    UIColor(hex: "#00345d")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

}

// MARK: - UICollectionViewDataSource

extension ListKeywordHotVC:UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ListKeywordHotCell", for: indexPath) as! ListKeywordHotCell
        let indexColor = indexPath.row % arrColor.count
        cell.setDataForCell(model: items[indexPath.row], color: arrColor[indexColor])
        return cell
    }
}

// MARK: - API

extension ListKeywordHotVC {
    func loadData() {
        self.showLoading()
        BaseAPIService.shared().getListKeywordHot { [weak self] (result) in
            self?.hideLoading()
            switch result {
            case .object(let data):
                self?.items = data.keywords ?? []
                self?.collectionView?.reloadData()
                break
            case .error(let error):
                print(error.message ?? "")
                break
                
            }
        }
    }
}
