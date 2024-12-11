//
//  OnboardingCollectionViewCell.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 03/12/2024.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var onboardingImg: UIImageView!
    @IBOutlet weak var onboardingImages: UIImageView!
    @IBOutlet weak var onboardingHead: UILabel!
    @IBOutlet weak var onboardingSubHead: UILabel!
    @IBOutlet weak var onboardingDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
