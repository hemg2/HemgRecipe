//
//  MisoStewViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/21.
//

import UIKit

class MisoStewViewController: UIViewController {
    
    
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
    }
}



extension MisoStewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 5
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MisoMainImageViewCell
            cell.misoMainIamgeView.image = UIImage(named: "된장재료")
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoExplanationCell
            cell.titleTextView.text = "김치 1컵, 양파 1/2개, 무100g, 두부1/2모"
            cell.subTitleTextView.text = "대파1/2대, 애호박1/3개, 홍고추1개, 김칫국물1/4컵"
            return cell
        }
        else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
                cell.misoImageView.image = UIImage(named: "된장1")
                cell.misoTextView.text = "김치와 무 는 속기 좋은 크기로 자른다.  양파와 애호박, 두부는 깍뚝 썰고 대파와 홍고추는 송송 썰어준다."
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
                cell.misoImageView.image = UIImage(named: "된장2")
                cell.misoTextView.text = "냄비에 약간의 참기름을 두른후 김치와 김칫국물을 넣어 볶으며 김치가 투명해지면 물과 무를 넣고 끓여준다."
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
                cell.misoImageView.image = UIImage(named: "된장3")
                cell.misoTextView.text = "무가 반쯤 익으면 애호박과 양파를 넣고 1분정도 끓여준다."
                return cell
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
                cell.misoImageView.image = UIImage(named: "된장4")
                cell.misoTextView.text = "두부를 넣고 2분 정도 끓여준다."
                return cell
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
                cell.misoImageView.image = UIImage(named: "된장5")
                cell.misoTextView.text = "마지막에 홍고추와 대파를 넣고 1분 더 끓여 완성한다."
                return cell
            }
        }
        else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장2")
            cell.misoImageView.layer.cornerRadius = cell.misoImageView.frame.height/2
            cell.misoTextView.text = "김치가 타지 않도록 잘 저어준다."
            return cell
        }
        else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! MisoSuggestionCell
            cell.misoSuggestionImageView.image = UIImage(named: "계란찜5")
            cell.misoSuggestionImageView.layer.cornerRadius = cell.misoSuggestionImageView.frame.height/2
            cell.misoSuggestionLabel.text = "쉽고 편한"
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

