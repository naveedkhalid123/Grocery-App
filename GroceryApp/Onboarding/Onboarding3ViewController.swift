


//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class Onboarding3ViewController: UIViewController {
    
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.borderColor = UIColor.black.cgColor
        loginBtn.layer.borderWidth = 2
    }
    
    @IBAction func createAccButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(vc2, animated: true)
    }
}

