//
//  SteamedViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class SteamedViewController: UIViewController {
    
    @IBOutlet weak var steamedCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "찜"
        
    }
}

extension SteamedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else if section == 1 {
            return 3
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "계란찜"
                cell.steamedImageView.image = UIImage(named: "계란찜5")
                return cell
            }
            else if indexPath.row == 1 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "콜렉션 22"
                cell.steamedImageView.image = UIImage(named: "김치1")
                return cell
            }
            else if indexPath.row == 2 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "콜렉션 33"
                cell.steamedImageView.image = UIImage(named: "김치2")
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "콜렉션 11"
                cell.steamedImageView.image = UIImage(named: "숲")
                return cell
            }
            else if indexPath.row == 1 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "콜렉션 22"
                cell.steamedImageView.image = UIImage(named: "김치3")
                return cell
            }
            else if indexPath.row == 2 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "콜렉션 33"
                cell.steamedImageView.image = UIImage(named: "김치1")
                return cell
            }
        }
        return UICollectionViewCell()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let storyboacrd = UIStoryboard.init(name: "EggCustard", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "EggCustard") as! EggCustardViewController
            navigationController?.pushViewController(VC, animated: true)
        }
//        else if indexPath.row == 1 {
//            let storyboacrd = UIStoryboard.init(name: "Steamed", bundle: nil)
//            let popUpVC = storyboacrd.instantiateViewController(withIdentifier: "Steamed") as! SteamedViewController
//            navigationController?.pushViewController(popUpVC, animated: true)
//            print("찜")
//        }
    }
}


extension SteamedViewController: UICollectionViewDelegateFlowLayout {
    
    //위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    // 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    //cell 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1
        
        let size = CGSize(width: width, height: width)
        return size
    }
}

