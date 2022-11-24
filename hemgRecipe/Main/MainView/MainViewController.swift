//
//  MainViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class MainViewController: UIViewController {
    private var list = ["국&찌개", "찜&탕", "라이스", "파스타", "반찬"]
    private var bestList = ["김치찌개", "계란찜", "미역국", "된장찌개"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }
    
}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return list.count
        } else if section == 1 {
            return bestList.count
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
                cell.MainImageView.image = UIImage(named: "김치찌개메인")
                //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
                cell.titleLabel.text = list[indexPath.row]
                return cell
            }
            if indexPath.row == 1 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
                cell.MainImageView.image = UIImage(named: "찜")
                //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
                cell.titleLabel.text = list[indexPath.row]
                return cell
            }
            if indexPath.row == 2 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
                cell.MainImageView.image = UIImage(named: "밥")
                //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
                cell.titleLabel.text = list[indexPath.row]
                return cell
            }
            if indexPath.row == 3 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
                cell.MainImageView.image = UIImage(named: "파스타")
                //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
                cell.titleLabel.text = list[indexPath.row]
                return cell
            }
            if indexPath.row == 4 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MainCollectionViewCell else { fatalError() }
                cell.MainImageView.image = UIImage(named: "반찬")
                //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
                cell.titleLabel.text = list[indexPath.row]
                return cell
            }
        }
        if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as? SubMainCollectionViewCell else { fatalError() }
            cell.subImageView.image = UIImage(named: "숲")
            //            cell.MainImageView.layer.cornerRadius = cell.MainImageView.frame.height/2
            cell.subLabel.text = bestList[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
    
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
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = collectionView.frame.width / 5 - 1 ///  3등분하여 배치, 옆 간격이 1이므로 1을 빼줌
//        //        print("collectionView width=\(collectionView.frame.width)")
//        //        print("cell하나당 width=\(width)")
//        //        print("root view width = \(self.view.frame.width)")
//
//        let size = CGSize(width: width, height: width)
//        return size
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 230)
    }
    
    //컬렉션뷰 감속 끝났을 때 현재 페이지 체크
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//         nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
//    }
    
}
