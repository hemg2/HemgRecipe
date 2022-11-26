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
                cell.difficultyLabel.text = "초급"
                cell.steamedImageView.image = UIImage(named: "계란찜5")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
            else if indexPath.row == 1 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "찜닭"
                cell.difficultyLabel.text = "중급"
                cell.steamedImageView.image = UIImage(named: "찜닭")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
            else if indexPath.row == 2 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "갈비찜"
                cell.difficultyLabel.text = "중급"
                cell.steamedImageView.image = UIImage(named: "갈비찜")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "아귀찜"
                cell.difficultyLabel.text = "상급"
                cell.steamedImageView.image = UIImage(named: "숲")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
            else if indexPath.row == 1 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "어묵 콩나물찜"
                cell.difficultyLabel.text = "중급"
                cell.steamedImageView.image = UIImage(named: "김치3")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
            else if indexPath.row == 2 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SteamedCollectionViewCell else { fatalError() }
                cell.steamedLabel.text = "바지락 술찜"
                cell.difficultyLabel.text = "상급"
                cell.steamedImageView.image = UIImage(named: "김치1")
                cell.steamedImageView.layer.cornerRadius = cell.steamedImageView.frame.height/2
                return cell
            }
        }
        return UICollectionViewCell()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let storyboacrd = UIStoryboard.init(name: "EggCustard", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "EggCustard") as! EggCustardViewController
            navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 1 {
            let storyboacrd = UIStoryboard.init(name: "SteamedChicken", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "SteamedChicken") as! SteamedChickenViewController
            navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 2 {
            let storyboacrd = UIStoryboard.init(name: "GalbiJim", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "GalbiJim") as! GalbiJimViewController
            navigationController?.pushViewController(VC, animated: true)
        }
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

