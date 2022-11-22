//
//  SeaweedViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SeaweedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "쇠고기미역국"
        
    }
}


extension SeaweedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SeaweedTableViewCell
            cell.SeaweedImageView.image = UIImage(named: "김치1")
            cell.SeaweedTextView.text = "미역국 재료"
            return cell
        }
        
        
        return UITableViewCell()
    }
    
    
}
