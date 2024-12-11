//
//  DealsCollectionViewCell.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 02/12/2024.
//

import UIKit

class DealsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dealsImg: UIImageView!
    @IBOutlet weak var dealsHeading: UILabel!
    @IBOutlet weak var dealsPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
