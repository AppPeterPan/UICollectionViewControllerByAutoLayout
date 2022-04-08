//
//  PrinceCollectionViewCell.swift
//  Demo
//
//  Created by Peter Pan on 2022/4/8.
//

import UIKit

class PrinceCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "\(PrinceCollectionViewCell.self)"
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
    static let width = floor((UIScreen.main.bounds.width - 4 * 2) / 3)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageWidthConstraint.constant = Self.width
    }

}
