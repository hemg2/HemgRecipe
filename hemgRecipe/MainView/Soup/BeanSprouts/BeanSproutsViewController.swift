//
//  BeanSproutsViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class BeanSproutsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "콩나물 국"
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension BeanSproutsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BeanSproutsTableViewCell
            cell.BeanSproutsImageView.image = UIImage(named: "")
            cell.BeanSproutsTextView.text = "콩나물국 재료"
            return cell
        }
        
        return UITableViewCell()
    }
    
    
}
