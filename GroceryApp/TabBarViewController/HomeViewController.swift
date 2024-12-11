
//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var cardArr = [["image":"card","head":"Recomended Recipe Today"], ["image":"card2","head":"Fresh Delivery "], ["image":"card3","head":"Recomended Recipe Today"],
                   ["image":"card4","head":"Recomended Recipe Today"], ["image":"card5","head":"Recomended Recipe Today"],]

    var categoriesArr = ["category1","category2","category3","category1"]

    var dealsArr = [["dealImg":"item1","itemName":"Avocado","itemPrice":"$5.6"],["dealImg":"item2","itemName":"Brocoli","itemPrice":"$4.6"],
                    ["dealImg":"item4","itemName":"Grapes","itemPrice":"$3.6"], ["dealImg":"item5","itemName":"Tomato","itemPrice":"$6.6"],
                    ["dealImg":"item6","itemName":"Avocado","itemPrice":"$3.6"],   ["dealImg":"item4","itemName":"Grapes","itemPrice":"$3.6"],]
    
    // Outlool to the Collection View height
    @IBOutlet weak var DealsCollectionViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var MenuCollectionView: UICollectionView!
    @IBOutlet weak var CategoriesCollectionView: UICollectionView!
    @IBOutlet weak var DealsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuCollectionView.delegate = self
        MenuCollectionView.dataSource = self
        MenuCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")

        CategoriesCollectionView.delegate = self
        CategoriesCollectionView.dataSource = self
        CategoriesCollectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        DealsCollectionView.delegate = self
        DealsCollectionView.dataSource = self
        DealsCollectionView.register(UINib(nibName: "DealsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DealsCollectionViewCell")
        // load colldctionvieew height function
        self.updateCollectionViewHeight()
    }
    
    // load colldctionvieew height function
    func updateCollectionViewHeight() {
        // Mention Collection View Name which height as discussed
        let contentSize = DealsCollectionView.collectionViewLayout.collectionViewContentSize.height
        print("contentSize",contentSize)
        
        // Mention Collection View Height Outlet
        DealsCollectionViewHeightConstraint.constant = contentSize
        view.layoutIfNeeded()
        DealsCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == MenuCollectionView {
            return cardArr.count
        } else if collectionView == CategoriesCollectionView {
            return categoriesArr.count
        } else {
            return dealsArr.count
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == MenuCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
            cell.MenuCardImg.image = UIImage(named: cardArr[indexPath.row]["image"] ?? "")
            cell.menuLbl.text = cardArr[indexPath.row]["head"]
            return cell
        } else if collectionView == CategoriesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
            cell.CategoriesImg.image = UIImage(named: categoriesArr[indexPath.row])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealsCollectionViewCell", for: indexPath) as! DealsCollectionViewCell
            cell.dealsImg.image = UIImage(named: dealsArr[indexPath.row]["dealImg"] ?? "")
            cell.dealsHeading.text = dealsArr[indexPath.row]["itemName"]
            cell.dealsPrice.text = dealsArr[indexPath.row]["itemPrice"]
            return cell
      }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == MenuCollectionView {
            return CGSize(width: collectionView.frame.width / 1.5, height: 162)
        } else if collectionView == CategoriesCollectionView {
            return CGSize(width: collectionView.frame.width / 3.5, height: 73)
        }else {
            return CGSize(width: collectionView.frame.width/2 - 10, height: 199)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == MenuCollectionView {
            
        } else if collectionView == CategoriesCollectionView{
            if let window = UIApplication.shared.keyWindow,
               let tabBarVC = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController {
                   tabBarVC.selectedIndex = 1 // Set to the tab at index 1 (second tab)
                   window.rootViewController = tabBarVC
                   window.makeKeyAndVisible()
            }
        
        } else{
            let vc = storyboard?.instantiateViewController(withIdentifier: "OrderDetailsViewController") as! OrderDetailsViewController
            vc.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    @IBAction func moreBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CategoriesDealsViewController") as! CategoriesDealsViewController
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

