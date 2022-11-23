//
//  MainViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class MainViewController: UIViewController {
    private var list = ["국", "찜", "밥", "파스타", "반찬"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }
    
}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
        if indexPath.row == 0 {
            cell.MainImageView.image = UIImage(named: "김치찌개메인")
            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.titleLabel.text = list[indexPath.row]
        }
        if indexPath.row == 1 {
            cell.MainImageView.image = UIImage(named: "찜")
            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.titleLabel.text = list[indexPath.row]
        }
        if indexPath.row == 2 {
            cell.MainImageView.image = UIImage(named: "밥")
            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.titleLabel.text = list[indexPath.row]
        }
        if indexPath.row == 3 {
            cell.MainImageView.image = UIImage(named: "파스타")
            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.titleLabel.text = list[indexPath.row]
        }
        if indexPath.row == 4 {
            cell.MainImageView.image = UIImage(named: "반찬")
            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.titleLabel.text = list[indexPath.row]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let storyboacrd = UIStoryboard.init(name: "Soup", bundle: nil)
            let popUpVC = storyboacrd.instantiateViewController(withIdentifier: "Soup") as! SoupViewController
            navigationController?.pushViewController(popUpVC, animated: true)
            print("찌개")
        }
       else if indexPath.row == 1 {
            let storyboacrd = UIStoryboard.init(name: "Steamed", bundle: nil)
            let popUpVC = storyboacrd.instantiateViewController(withIdentifier: "Steamed") as! SteamedViewController
            navigationController?.pushViewController(popUpVC, animated: true)
            print("찜")
        }
    }
}


extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    //위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    //cell 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 4 - 1 ///  3등분하여 배치, 옆 간격이 1이므로 1을 빼줌
        //        print("collectionView width=\(collectionView.frame.width)")
        //        print("cell하나당 width=\(width)")
        //        print("root view width = \(self.view.frame.width)")
        
        let size = CGSize(width: width, height: width)
        return size
    }
}
