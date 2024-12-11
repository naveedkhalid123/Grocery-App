//
//  OrderAddressViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 05/12/2024.
//

import UIKit

class OrderAddressViewController: UIViewController {
    
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var countryTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply styling and padding to all text fields
        styleTextField(fullNameTxt)
        styleTextField(emailTxt)
        styleTextField(phoneTxt)
        styleTextField(addressTxt)
        styleTextField(zipCodeTxt)
        styleTextField(cityTxt)
        styleTextField(countryTxt)
    }
    
    private func styleTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor(named: "light gray")?.cgColor
        textField.layer.cornerRadius = textField.frame.height / 2.0
        
        // Add padding to the left of the text field
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    @IBAction func nextBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderCartViewController") as! OrderCartViewController
        self.navigationController?.popViewController(animated: true)
    }
}
