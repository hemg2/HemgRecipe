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
    title = "찌개류"
    }
}


extension SoupViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
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
            cell.titleIamge.image = UIImage(named: "된장찌개")
            cell.accessoryType = .disclosureIndicator
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
            cell.titleLabel.text = "미역국"
            cell.titleIamge.image = UIImage(named: "된장찌개")
            cell.accessoryType = .disclosureIndicator
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
            cell.titleLabel.text = "콩나물국"
            cell.titleIamge.image = UIImage(named: "된장찌개")
            cell.accessoryType = .disclosureIndicator
            return cell
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
            cell.titleLabel.text = "순찌개"
            cell.titleIamge.image = UIImage(named: "된장찌개")
            cell.accessoryType = .disclosureIndicator
            return cell
        }
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
            let VC1 = storyboacrd1.instantiateViewController(withIdentifier: "Miso") as! MisoStewViewController
            navigationController?.pushViewController(VC1, animated: true)
           print("2page")
        }
    }
}
