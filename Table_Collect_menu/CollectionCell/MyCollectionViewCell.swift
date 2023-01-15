//
//  MyCollectionViewCell.swift
//  Table_Collect_menu
//
//  Created by 박다미 on 2023/01/15.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    public func configure(with model: Model){
        self.imageView.image = UIImage(named: model.imageName)
        self.titleLabel.text = model.title
        self.priceLabel.text = model.price
        
      
    }

}
