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
        //        tableView.register(SoupTableViewCell.self, forCellReuseIdentifier: "SoupTableViewCell")
        //        tableView.register(SecondSoupTableViewCell.self, forCellReuseIdentifier: "SecondSoupTableViewCell")
        view.backgroundColor = .systemBackground
    }
}


extension SoupViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoupTableViewCell") as! SoupTableViewCell
            cell.titleLabel.text = "김치찌개"
            cell.titleIamge.image = UIImage(named: "김치찌개")
            cell.accessoryType = .disclosureIndicator
            return cell
            
        } else if indexPath.row == 1{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "SecondSoupTableViewCell") as! SecondSoupTableViewCell
            cell1.titleLabel.text = "된장찌개"
            cell1.titleIamge.image = UIImage(named: "된장찌개")
            cell1.accessoryType = .disclosureIndicator
            return cell1
        }
        return UITableViewCell()
    }
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        tableView.deselectRow(at: indexPath, animated: true)
    //        if indexPath.section == 0 {
    //            let view =
    //            self.navigationController?.pushViewController(view, animated: true)
    //        }
    
}
