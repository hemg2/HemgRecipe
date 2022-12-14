//
//  SoftTofuViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SoftTofuViewController: UIViewController {
    
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
        
        title = "순두부찌개"
        
        
    }
    
}


extension SoftTofuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 5
        } else if section == 3 {
            return 2
        } else if section == 4 {
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SoftTofuMainImageViewCell
            cell.SoftTofuMainImageView.image = UIImage(named: "순두부재료")
            return cell
        }
        if indexPath.section == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! SoftTofuExplanationCell
            cell.titleTextView.text = "김치 1/2컵, 순두부 1봉, 애호박 1/4개, 표고버섯2개, 대파1/3개, 양파1/4개, 쳥양고추1개"
                cell.subtitleTextView.text = "양념장재료: 고춧가루 1큰술, 맛술 1큰술, 국간장 1큰술, 다진마늘 1큰술, 후춧가루 약간, 들기름 1작은술"
                return cell
        }
        
        if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부1")
                cell.softTofuTextView.text = "양파는 채 썰어주세요. 애호박은 나박썰기, 청양고추와 대파는 어슷 썰기, 표고는 채썰기"
                return cell
            }
            else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부2")
                cell.softTofuTextView.text = "볼에 양념 재료를 넣어 섞어주세요."
                return cell
            }
            else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부3")
                cell.softTofuTextView.text = "냄비에 고추기름과 대파 반을 넣고 중불에서 볶다가 파 향이 올라오면 양파, 김치 순서로 넣어 볶는다."
                return cell
            }
            else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부4")
                cell.softTofuTextView.text = "물을 붓고 양념장과 애호박과 표고버섯을 넣 5분 정도 끓이다가 순두부를 넣고 끓여주세요."
                return cell
            }
            else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부5")
                cell.softTofuTextView.text = "마지막에 청양고수와 대파를 넣고 한소끔 끓여 맛있게 즐겨주세요."
                return cell
            }
        }
        else if indexPath.section == 3 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부3")
                cell.softTofuTextView.text = "파가 너무 타지 않도록 과하지 않게 소태 시켜준다."
                return cell
            }
            if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SoftTofuTableViewCell
                cell.softTofuImageView.image = UIImage(named: "순두부4")
                cell.softTofuTextView.text = "순두부의 크기를 작지않게 적당량 잘라 넣어준다."
                return cell
            }
        } else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! SoftTofuSuggestionCell
            cell.SoftTofuSuggestionImageView.image = UIImage(named: "계란찜5")
            cell.SoftTofuSuggestionLabel.text = "쉽고 편한 계란찜!"
            cell.SoftTofuSuggestionImageView.layer.cornerRadius = cell.SoftTofuSuggestionImageView.frame.height/2
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
