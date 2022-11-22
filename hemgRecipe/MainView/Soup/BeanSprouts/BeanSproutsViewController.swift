//
//  BeanSproutsViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class BeanSproutsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "콩나물 국"
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension BeanSproutsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 4
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물재료")
                cell.BeanSproutsTextView.text = "콩나물 200g, 쪽파 1대, 청양고추 1/2개, 다진 마늘 1작은술, 새우젓 1/2큰술, 소금 약간 물 600ml"
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물1")
                cell.BeanSproutsTextView.text = "콩나물은 깨끌이 씻어 체에 밭쳐 물기를 빼주세요."
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물2")
                cell.BeanSproutsTextView.text = "쪽파의 흰뿌리는 반으로 갈라 3센치 길이로 자르고, 청양고추는 어슷하게 썰어주세요."
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물3")
                cell.BeanSproutsTextView.text = "냄비에 멸치 다시마 육수를 넣어 끓으면 다진 마늘, 새우젓을 넣어 간을 맞춰주세요"
                return cell
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물4")
                cell.BeanSproutsTextView.text = "콩나물을 넣고 3분 정도 끓여주세요."
                return cell
            }  else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물5")
                cell.BeanSproutsTextView.text = "쪽파와 청양고추를 넣어 2분 정도 끓이고, 부족한 간은 소금으로 맞춘후 드시면 됩니다."
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //        return sections[section]
        switch section {
        case 0: return "재료"
        case 1: return "순서"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
}
