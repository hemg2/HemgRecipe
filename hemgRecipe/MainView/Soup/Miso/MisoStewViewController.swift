//
//  MisoStewViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/21.
//

import UIKit

class MisoStewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "된장찌개"

    }
}



extension MisoStewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장1")
            cell.misoTextView.text = "김치와 무 는 속기 좋은 크기로 자른다.  양파와 애호박, 두부는 깍뚝 썰고 대파와 홍고추는 송송 썰어준다."
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장2")
            cell.misoTextView.text = "냄비에 약간의 참기름을 두른후 김치와 김칫국물을 넣어 볶으며 김치가 투명해지면 물과 무를 넣고 끓여준다."
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장3")
            cell.misoTextView.text = "무가 반쯤 익으면 애호박과 양파를 넣고 1분정도 끓여준다."
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장4")
            cell.misoTextView.text = "두부를 넣고 2분 정도 끓여준다."
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! MisoTableViewCell
            cell.misoImageView.image = UIImage(named: "된장5")
            cell.misoTextView.text = "마지막에 홍고추와 대파를 넣고 1분 더 끓여 완성한다."
            return cell
        }
        return UITableViewCell()
    }
    
    
}

