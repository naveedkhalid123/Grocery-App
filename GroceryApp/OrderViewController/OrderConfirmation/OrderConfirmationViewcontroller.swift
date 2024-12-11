
//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func trackOrderBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderTrackingViewController") as! OrderTrackingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

