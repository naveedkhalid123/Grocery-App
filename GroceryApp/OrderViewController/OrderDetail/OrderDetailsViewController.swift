
import UIKit

class OrderDetailsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var descArr = ["Description","Review","Disscussion","Tracking"]

@IBOutlet weak var dealsNamesCollectionView: UICollectionView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        dealsNamesCollectionView.delegate = self
        dealsNamesCollectionView.dataSource = self
        dealsNamesCollectionView.register(UINib(nibName: "DealsDescriptionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DealsDescriptionCollectionViewCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return descArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealsDescriptionCollectionViewCell", for: indexPath) as! DealsDescriptionCollectionViewCell
        cell.descriptionLbl.text = descArr[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3, height: 27)
    }

    @IBAction func backBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CategoriesDealsViewController") as! CategoriesDealsViewController
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func fvtBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CategoriesDealsViewController") as! CategoriesDealsViewController
        vc.navigationController?.isNavigationBarHidden = true
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func addToCartBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderCartViewController") as! OrderCartViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
