//
//  SeaweedViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SeaweedViewController: UIViewController {
    
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
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}


extension SeaweedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SeaweedMainIamgeCell
            cell.seaweedImageView.image = UIImage(named: "미역국재료")
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! SeaweedExplanationCell
            cell.titleTextView.text = "재료 쇠고기 100g, 미역 20g, 참기름 2큰술, 국간장 2큰술, 다진마늘 1큰술, 물7L, 액젓 1큰술"
            cell.subTitleTextView.text = ""
            return cell
        }
        else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SeaweedTableViewCell
                cell.SeaweedImageView.image = UIImage(named: "미역국1")
                cell.SeaweedTextView.text = "미역을 불립니다. 이후 불린 미역은 물에 깨끗하게 헹군후 물기를 빼주세요"
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SeaweedTableViewCell
                cell.SeaweedImageView.image = UIImage(named: "미역국2")
                cell.SeaweedTextView.text = "달군 팬에 쇠소기를 넣어 볶다가 참기름을 넣고 쇠고기 겉면의 핏기가 없을때까지 볶아주세요"
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SeaweedTableViewCell
                cell.SeaweedImageView.image = UIImage(named: "미역국3")
                cell.SeaweedTextView.text = "물을 넣고 20 ~ 30분 정도 충분히 끓여주세요."
                return cell
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SeaweedTableViewCell
                cell.SeaweedImageView.image = UIImage(named: "미역국4")
                cell.SeaweedTextView.text = "간이 부족하다면 간장이나 액젓으로 맞춰주세요."
                return cell
            }
        }
        
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SeaweedTableViewCell
            cell.SeaweedImageView.image = UIImage(named: "")
            cell.SeaweedTextView.text = "특이 사항 없습니다."
            return cell
        }
        if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! SeaweedSuggestionCell
            cell.seaweedSuggestionIamgeView.image = UIImage(named: "계란찜5")
            cell.seaweedSuggestionLabel.text = "쉽고 간편한 계란찜"
            cell.seaweedSuggestionIamgeView.layer.cornerRadius = cell.seaweedSuggestionIamgeView.frame.height/2
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
        //        return sections[section]
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
