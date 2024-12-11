//
//  OrderCartTableViewCell.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 05/12/2024.
//

import UIKit

class OrderCartTableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet weak var cartImges: UIImageView!
   
    @IBOutlet weak var cartCategory: UILabel!
    @IBOutlet weak var cartName: UILabel!
    @IBOutlet weak var cartTotalPrice: UILabel!
    @IBOutlet weak var PriceLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
