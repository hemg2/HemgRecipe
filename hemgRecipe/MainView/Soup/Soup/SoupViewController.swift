//
//  SoupViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/20.
//

import UIKit

class SoupViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    title = "국류"
    }
}


extension SoupViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        } else if section == 1 {
            return 4
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
                cell.titleLabel.text = "김치찌개"
                cell.titleIamge.image = UIImage(named: "김치찌개")
                cell.accessoryType = .disclosureIndicator
                return cell
                
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
                cell.titleLabel.text = "된장찌개"
                cell.titleIamge.image = UIImage(named: "된장찌개")
                cell.accessoryType = .disclosureIndicator
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
                cell.titleLabel.text = "순두부찌개"
                cell.titleIamge.image = UIImage(named: "순두부5")
                cell.accessoryType = .disclosureIndicator
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
                cell.titleLabel.text = "미역국"
                cell.titleIamge.image = UIImage(named: "된장찌개")
                cell.accessoryType = .disclosureIndicator
                return cell
            }
        }
//        else if indexPath.row == 4 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
//            cell.titleLabel.text = "콩나물국"
//            cell.titleIamge.image = UIImage(named: "된장찌개")
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        } else if indexPath.row == 5 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
//            cell.titleLabel.text = "순찌개"
//            cell.titleIamge.image = UIImage(named: "된장찌개")
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let storyboacrd = UIStoryboard.init(name: "Kimchi", bundle: nil)
            let VC = storyboacrd.instantiateViewController(withIdentifier: "Kimchi") as! KimchiStewViewController
            navigationController?.pushViewController(VC, animated: true)
            print("1page") //색션은 타이틀 그룹 묶음용
        }
        else if indexPath.row == 1 {
            let storyboacrd1 = UIStoryboard.init(name: "Miso", bundle: nil)
            let VC = storyboacrd1.instantiateViewController(withIdentifier: "Miso") as! MisoStewViewController
            navigationController?.pushViewController(VC, animated: true)
            print("2page")
        }
        else if indexPath.row == 2 {
            let storyboacrd1 = UIStoryboard.init(name: "SoftTofu", bundle: nil)
            let VC = storyboacrd1.instantiateViewController(withIdentifier: "SoftTofu") as! SoftTofuViewController
            navigationController?.pushViewController(VC, animated: true)
            print("3page")
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "찌개류"
        case 1: return "국류"
        default: return nil
        }
    }
}
