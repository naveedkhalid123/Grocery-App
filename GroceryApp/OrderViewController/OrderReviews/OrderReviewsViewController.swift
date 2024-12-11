
//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 04/12/2024.
//

import UIKit

class OrderReviewsViewController: UIViewController {
    

    @IBOutlet weak var reviewTxtview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reviewTxtview.layer.borderColor = UIColor(named: "orange")?.cgColor
        reviewTxtview.layer.borderWidth = 1.0
        reviewTxtview.layer.cornerRadius = 18
    }
    
    @IBAction func doneBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderTrackingViewController") as! OrderTrackingViewController
        self.navigationController?.popViewController(animated: true)
    }
}
