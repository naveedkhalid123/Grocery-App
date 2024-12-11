
//
//  ViewController.swift
//  GroceryApp
//
//  Created by Naveed Khalid on 30/11/2024.
//

import UIKit

class OnboardingCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var onboarArr = [
        ["image":"onboarding5","head":"Welcome to Fresh Fruits","subhead":"Grocery application","desc":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"],
        ["image":"boarding2","head":"We provide best quality","subhead":"Fruits to your family","desc":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"],]
   
    @IBOutlet weak var OnboardingCollectionView: UICollectionView!
        override func viewDidLoad() {
        super.viewDidLoad()
        OnboardingCollectionView.delegate = self
        OnboardingCollectionView.dataSource = self
        OnboardingCollectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboarArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as!
        OnboardingCollectionViewCell
        cell.onboardingImages.image = UIImage(named: onboarArr[indexPath.row]["image"] ?? "")
        cell.onboardingHead.text = onboarArr[indexPath.row]["head"]
        cell.onboardingSubHead.text = onboarArr[indexPath.row]["subhead"]
        cell.onboardingDes.text = onboarArr[indexPath.row]["desc"]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 485)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Onboarding3ViewController")as! Onboarding3ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

