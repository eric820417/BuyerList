//
//  showImageCollectionViewCell.swift
//  BuyerList
//
//  Created by LeungChiWai on 22/10/2016.
//  Copyright © 2016年 Eric－Leung. All rights reserved.
//

import UIKit

class showImageCollectionViewCell: UICollectionViewCell {
    
    var deleteButton = UIButton()
    var imageView = UIImageView()
    
    override init (frame:CGRect){
        super.init(frame: frame)
        
        // CollectionView中Cell的圖片
        
        imageView.frame = contentView.bounds
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
        
        // CollectionView中Cell的刪除按鈕
        
        deleteButton.setImage(UIImage(named: "delete"), for: UIControlState())
       // deleteButton.addTarget(DetailViewController.self, action: #selector(DetailViewController.buttonTapped(_:)), forControlEvents: .TouchUpInside)
        contentView.addSubview(deleteButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        imageView.frame = self.bounds
        deleteButton.frame = self.bounds
        
        let deleteButtonWidth = self.frame.size.width / 5
        
        deleteButton.frame = CGRect(x: self.frame.size.width - deleteButtonWidth, y: 0, width: deleteButtonWidth, height: deleteButtonWidth)
        
    }
    
  
    
}
