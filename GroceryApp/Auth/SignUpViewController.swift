//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstnameTxtField: UITextField!
    @IBOutlet weak var lastnameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Styling text fields
        styleTextField(firstnameTxtField)
        styleTextField(lastnameTxtField)
        styleTextField(emailTxtField)
        styleTextField(passwordTxtField)
    }
    
    private func styleTextField(_ textField: UITextField) {
        // Add border, corner radius, and placeholder padding
        textField.layer.borderColor = UIColor(named: "orange")?.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = textField.frame.height / 2.0
        
        // Add padding to the left of the text field
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    @IBAction func createAccButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CongratesViewController") as! CongratesViewController
        // for tabbar navigation controller code
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .overFullScreen
        nav.isNavigationBarHidden = true
        self.present(nav, animated: true, completion: nil)
        
    }
    
    @IBAction func signUpBackBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Onboarding3ViewController") as! Onboarding3ViewController
        self.navigationController?.popViewController(animated: true)
    }
}
