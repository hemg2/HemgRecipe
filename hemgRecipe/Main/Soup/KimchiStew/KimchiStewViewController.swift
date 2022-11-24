//
//  KimchiStewViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class KimchiStewViewController: UIViewController {
    
    
    
    @IBAction func shared(_ sender: Any) {
        let shareText: String = "공유하기"
        var objectToShare = [Any]()
        objectToShare.append(shareText)
        
        let vc = UIActivityViewController(activityItems: objectToShare, applicationActivities: nil)
        vc.popoverPresentationController?.sourceView = self.view
        present(vc, animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}


extension KimchiStewViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 3
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "재료 이미지"
        case 1: return "재료 구성"
        case 2: return "조리 순서"
        case 3: return "중요 포인트"
        case 4: return "추천 레시피"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! MainImageCell
            cell.MainImageView.image = UIImage(named: "김치재료")
//            cell.representativeImageView.image = UIImage(named: "김치찌개메인")
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! ExplanationCell
            cell.firstTextView.text = "기본재료: 배추김치 1/4포기, 두부 1/2모, 대파 1/2대"
            cell.secondTextView.text = "국물 재료: 다시마 멸치물3컵, 고춧가루1큰술, 김치국물 1/2컵"
            return cell
        }
        else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
                cell.titleImage.image = UIImage(named: "김치1")
                cell.textView.text = "두부, 김치, 대파 한입 크기 썰기 "
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
                cell.titleImage.image = UIImage(named: "김치2")
                cell.textView.text = "냄비에 김치를 2~3분 볶은후, 물 500ml 넣은뒤 10분 정도 끊여준다."
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
                cell.titleImage.image = UIImage(named: "김치3")
                cell.textView.text = "두부와 대파를 넣고 2분 정도 더 끓이면 완성!"
                return cell
            }
        } else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
            cell.titleImage.image = UIImage(named: "김치2")
            cell.textView.text = "김치가 너무 타지 않도록 하기"
            return cell
        } else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell4") as! SuggestionCell
            cell.suggestionImageView.image = UIImage(named: "계란찜5")
            cell.suggestionImageView.layer.cornerRadius = cell.suggestionImageView.frame.height/2
            cell.suggestionLabel.text = "쉽고 빠른 계란찜!"
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
    
    
}
