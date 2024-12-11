//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Apply styling and padding
        styleTextField(emailTxtField)
        styleTextField(passwordTxtField)
    }
    
    private func styleTextField(_ textField: UITextField) {
        // Add border, corner radius
        textField.layer.borderColor = UIColor(named: "orange")?.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = textField.frame.height / 2.0
        
        // Add padding to the left of the text field
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    @IBAction func signInButtonAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signInBackBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Onboarding3ViewController") as!  Onboarding3ViewController
        self.navigationController?.popViewController(animated: true)
    }
}
