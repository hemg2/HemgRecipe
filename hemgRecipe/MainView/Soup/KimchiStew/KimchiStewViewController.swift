//
//  KimchiStewViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class KimchiStewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "김치찌개"
        
    }
}


extension KimchiStewViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 3
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
                cell.titleImage.image = UIImage(named: "김치재료")
                cell.textView.text = "김치 1/4포기, 두부 1/2모, 대파 1/2대, 김치국물 1/2컵, 물 600ml"
                return cell
            }
        }
        if indexPath.section == 1 {
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
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
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
