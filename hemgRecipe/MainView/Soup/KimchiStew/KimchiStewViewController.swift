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
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FirstExplanationCell
            cell.titleImage.image = UIImage(named: "김치1")
            cell.textView.text = "재료 1번"
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
        return UITableViewCell()
    }
}
