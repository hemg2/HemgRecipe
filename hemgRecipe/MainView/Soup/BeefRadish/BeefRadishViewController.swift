//
//  BeefRadishViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class BeefRadishViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "소고기 무국"
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension BeefRadishViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeefRadishTableViewCell
            cell.BeefRadishImageView.image = UIImage(named: "")
            cell.BeefRadishTextView.text = "콩나물국 재료"
            return cell
        }
        
        return UITableViewCell()
    }
    
    
}
