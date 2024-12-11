//
//  PaymentViewCollectionViewCell.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 05/12/2024.
//

import UIKit

class PaymentViewCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var cashLbl: UILabel!
    
    
    @IBOutlet weak var cashLblView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cashLblView.layer.borderColor = UIColor(named: "orange")?.cgColor
        cashLblView.layer.borderWidth = 2
    }

}
