//
//  BeanSproutsViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class BeanSproutsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func shared(_ sender: Any) {
        let shareText: String = "공유하기"
        var objectToShare = [Any]()
        objectToShare.append(shareText)
        
        let vc = UIActivityViewController(activityItems: objectToShare, applicationActivities: nil)
        vc.popoverPresentationController?.sourceView = self.view
        present(vc, animated: true)
    }
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
            return 1
        } else if section == 2{
            return 4
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsMainImageViewCell
            cell.mainImageView.image = UIImage(named: "콩나물재료")
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! BeanSproutsExplanationCell
            cell.titleTextView.text = "콩나물 200g, 쪽파 1대, 청양고추 1/2개, 다진 마늘 1작은술, 새우젓 1/2큰술, 소금 약간"
            cell.subTitleTextView.text = "물 600ml"
            return cell
        }
        if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물1")
                cell.BeanSproutsTextView.text = "콩나물은 깨끌이 씻어 체에 밭쳐 물기를 빼주세요."
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물2")
                cell.BeanSproutsTextView.text = "쪽파의 흰뿌리는 반으로 갈라 3센치 길이로 자르고, 청양고추는 어슷하게 썰어주세요."
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물3")
                cell.BeanSproutsTextView.text = "냄비에 멸치 다시마 육수를 넣어 끓으면 다진 마늘, 새우젓을 넣어 간을 맞춰주세요"
                return cell
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물4")
                cell.BeanSproutsTextView.text = "콩나물을 넣고 3분 정도 끓여주세요."
                return cell
            }  else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
                cell.BeanSproutsImageView.image = UIImage(named: "콩나물5")
                cell.BeanSproutsTextView.text = "쪽파와 청양고추를 넣어 2분 정도 끓이고, 부족한 간은 소금으로 맞춘후 드시면 됩니다."
                return cell
            }
        }
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! BeanSproutsTableViewCell
            cell.BeanSproutsImageView.image = UIImage(named: "콩나물4")
            cell.BeanSproutsTextView.text = "콩나물에 의해 비린내가 날 수 있으므로 뚜겅을 열어 두고 끓인다."
            return cell
        }
        if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! BeanSproutsSuggestionCell
            cell.suggestionImageView.image = UIImage(named: "계란찜5")
            cell.suggestionLabel.text = "빠르게"
            cell.suggestionImageView.layer.cornerRadius = cell.suggestionImageView.frame.height/2
            cell.accessoryType = .disclosureIndicator
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 4 {
            let storyboacrd = UIStoryboard.init(name: "EggCustard", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "EggCustard") as! EggCustardViewController
            navigationController?.pushViewController(VC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return ""
        case 1: return "재료"
        case 2: return "순서"
        case 3: return "중요 포인트"
        case 4: return "추천 레시피"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
}
