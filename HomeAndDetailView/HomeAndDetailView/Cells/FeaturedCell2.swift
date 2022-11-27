//
//  FeaturedCell2.swift
//  HomeAndDetailView
//
//  Created by Santita Humphries on 11/27/22.
//

import UIKit

class FeaturedCell2: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: FeaturedCell2.self)
    static let nib = UINib(nibName: String(describing: FeaturedCell2.self), bundle: nil)

    @IBOutlet weak var featured2: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
