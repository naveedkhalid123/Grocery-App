
//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class CategoriesDealsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

     var foodDealsArr = [["image":"item1","name":"Avacado","price":"$5.3"],["image":"item2","name":"Blueberry","price":"$4.3"],["image":"item3","name":"Orange","price":"$7.3"],
                         ["image":"item4","name":"Banana","price":"$3.3"],["image":"item5","name":"Tomatoes","price":"$2.3"],["image":"item6","name":"Grapes","price":"$5.3"],
                         ["image":"item7","name":"Avacado","price":"$6.3"],["image":"item8","name":"Blueberry","price":"$3.3"],["image":"item9","name":"Orange","price":"$4.3"],
                         ["image":"item10","name":"Banana","price":"$7.3"],["image":"item11","name":"Tomatoes","price":"$5.3"],["image":"item12","name":"Grapes","price":"$8.3"]]
        
    @IBOutlet weak var dealsCollectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var foodDealsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodDealsCollectionView.delegate = self
        foodDealsCollectionView.dataSource = self
        foodDealsCollectionView.register(UINib(nibName: "CategoriesDealsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesDealsCollectionViewCell")
        self.updateCollectionViewHeight()
    }

   func updateCollectionViewHeight() {
        let contentSize = foodDealsCollectionView.collectionViewLayout.collectionViewContentSize
        print("contentSize",contentSize)
        dealsCollectionViewHeight.constant = contentSize.height
        view.layoutIfNeeded()
        foodDealsCollectionView.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodDealsArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesDealsCollectionViewCell", for: indexPath) as! CategoriesDealsCollectionViewCell
        cell.fooDealsImages.image = UIImage(named: foodDealsArr[indexPath.row]["image"] ?? "")
        cell.foodDealName.text = foodDealsArr[indexPath.row]["name"]
        cell.foodPrice.text = foodDealsArr[indexPath.row]["price"]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2-10, height: 199)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderDetailsViewController") as! OrderDetailsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.popViewController(animated: true)
    }
}
