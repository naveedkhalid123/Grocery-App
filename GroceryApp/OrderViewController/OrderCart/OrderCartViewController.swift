//
//  OrderCartViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 05/12/2024.
//

import UIKit

class OrderCartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cartArr = [
        ["cartImg": "cart1", "cartPrice": "$4.2", "cartCategory": "FRUITS", "cartName": "Banana", "totalPrice": "$5.6"],
        ["cartImg": "cart2", "cartPrice": "$3.2", "cartCategory": "VEGETABLES", "cartName": "Broccoli", "totalPrice": "$3.3"],
        ["cartImg": "cart3", "cartPrice": "$6.1", "cartCategory": "MUSHROOM", "cartName": "Oyster Mushroom", "totalPrice": "$5.1"],
        ["cartImg": "cart2", "cartPrice": "$2.5", "cartCategory": "VEGETABLES", "cartName": "Broccoli", "totalPrice": "$6.6"],
        ["cartImg": "cart1", "cartPrice": "$5.6", "cartCategory": "FRUITS", "cartName": "Banana", "totalPrice": "$1.3"],
        ["cartImg": "cart3", "cartPrice": "34.2", "cartCategory": "MUSHROOM", "cartName": "Broccoli", "totalPrice": "$5.2"],
    ]
    
    @IBOutlet weak var orderCartTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        orderCartTableView.delegate = self
        orderCartTableView.dataSource = self
        orderCartTableView.register(UINib(nibName: "OrderCartTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderCartTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCartTableViewCell") as? OrderCartTableViewCell else {
            return UITableViewCell()
        }
        
        let cartItem = cartArr[indexPath.row]
        cell.cartImges.image = UIImage(named: cartItem["cartImg"] ?? "")
        cell.PriceLbl.text = cartItem["cartPrice"]
        cell.cartCategory.text = cartItem["cartCategory"]
        cell.cartName.text = cartItem["cartName"]
        cell.cartTotalPrice.text = cartItem["totalPrice"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 137 // Set the desired height for your cells
      }
    
    @IBAction func placeOrderBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderAddressViewController") as! OrderAddressViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

