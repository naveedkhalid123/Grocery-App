//
//  PaymentViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 05/12/2024.
//

import UIKit

class PaymentViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cashLblArr = ["Cash on Delivery", "Credit Card", "Cash on Delivery", "Credit Card"]
    var atmCardArr = ["Credit card", "AtmCard2", "Credit card"]
    
    @IBOutlet weak var paymentCollectionView: UICollectionView!
    @IBOutlet weak var atmCardCollectionView: UICollectionView!
    
    @IBOutlet weak var cardHolderTxt: UITextField!
    @IBOutlet weak var cardHolderNameTxt: UITextField!
    @IBOutlet weak var monthTxt: UITextField!
    @IBOutlet weak var cvvTxt: UITextField!
    @IBOutlet weak var countryTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up collection views
        paymentCollectionView.delegate = self
        paymentCollectionView.dataSource = self
        paymentCollectionView.register(UINib(nibName: "PaymentViewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PaymentViewCollectionViewCell")
        
        atmCardCollectionView.delegate = self
        atmCardCollectionView.dataSource = self
        atmCardCollectionView.register(UINib(nibName: "ATMCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ATMCardCollectionViewCell")
        
        // Style and add padding to text fields
        styleTextField(cardHolderTxt)
        styleTextField(cardHolderNameTxt)
        styleTextField(monthTxt)
        styleTextField(cvvTxt)
        styleTextField(countryTxt)
    }
    
    private func styleTextField(_ textField: UITextField) {
        // Add border, corner radius
        textField.layer.cornerRadius = textField.frame.height / 2.0
        textField.layer.borderColor = UIColor(named: "light gray")?.cgColor
        textField.layer.borderWidth = 2
        
        // Add padding to the left of the text field
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == paymentCollectionView {
            return cashLblArr.count
        } else {
            return atmCardArr.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == paymentCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaymentViewCollectionViewCell", for: indexPath) as! PaymentViewCollectionViewCell
            cell.cashLbl.text = cashLblArr[indexPath.row]
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ATMCardCollectionViewCell", for: indexPath) as! ATMCardCollectionViewCell
            cell.atmCardImg.image = UIImage(named: atmCardArr[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == paymentCollectionView {
            return CGSize(width: collectionView.frame.width / 2.5, height: 56)
        } else {
            return CGSize(width: collectionView.frame.width / 1.5 - 14, height: 160)
        }
    }
    
    @IBAction func confirmOrderBtnAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderConfirmationViewController") as!OrderConfirmationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderAddressViewController") as! OrderAddressViewController
        self.navigationController?.popViewController(animated: true)
    }
}
