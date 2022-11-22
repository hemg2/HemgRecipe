//
//  EggCustardViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class EggCustardViewController: UIViewController {

    @IBOutlet weak var eggCustardTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "계란찜"
    }

}


extension EggCustardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 5
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell
                else {fatalError()}
                cell.EggCustardImageView.image = UIImage(named: "계란찜재료")
                cell.EggCustardTextView.text = "계란 5개, 다시마1장, 물300ml, 새우젓 1큰술, 실파조금, 통깨조금, 참기름 약간"
                return cell
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell else {fatalError()}
                cell.EggCustardImageView.image = UIImage(named: "계란찜1")
                cell.EggCustardTextView.text = "계란을 통에 넣고 섞어 계란물을 만들고, 실파는 송송 썰어주세요."
                return cell
            } else if indexPath.row == 1 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell else { fatalError() }
                cell.EggCustardImageView.image = UIImage(named: "계란찜2")
                cell.EggCustardTextView.text = "뚝배기에 물과 다시마, 새우젓을 넣고 끓여주세요. 물이 끓으면 다시마와 새우젓을 걸러주세요."
                return cell
            } else if indexPath.row == 2 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell else { fatalError() }
                cell.EggCustardImageView.image = UIImage(named: "계란찜3")
                cell.EggCustardTextView.text = "다시마물이 끓어 오르면, 계란물을 넣고 중불에서 고루 저어주세요."
                return cell
            } else if indexPath.row == 3 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell else { fatalError() }
                cell.EggCustardImageView.image = UIImage(named: "계란찜4")
                cell.EggCustardTextView.text = "계란이 흰색으로 익으면서 몽글몽글해지면 약불로 줄이고 뚜꺼을 덮어 2분정도 익혀주세요."
                return cell
            } else if indexPath.row == 4 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? EggCustardTableViewCell else { fatalError() }
                cell.EggCustardImageView.image = UIImage(named: "계란찜5")
                cell.EggCustardTextView.text = "불을끄고 송송 썰은 실파, 약간의 참깨 참기름을 뿌려 완성합니다.!"
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "계란찜 재료"
        case 1: return "조리 순서"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
}
