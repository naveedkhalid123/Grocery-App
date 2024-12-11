//
//  OrderTrackingViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 04/12/2024.
//


import UIKit

class OrderTrackingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitReviewBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderReviewsViewController") as! OrderReviewsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderConfirmationViewController") as! OrderConfirmationViewController
        self.navigationController?.popViewController(animated: true)
    }
}
