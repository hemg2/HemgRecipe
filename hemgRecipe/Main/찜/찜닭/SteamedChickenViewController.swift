//
//  SteamedChickenViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SteamedChickenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "찜닭"
        
    }
    
}



extension SteamedChickenViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 8
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell
                else {fatalError()}
                cell.steamedChikenImageView.image = UIImage(named: "찜닭재료")
                cell.SteamedChickenTextView.text = "닭600g, 떡 150g, 감자 1개, 양파 1/2개, 당근 1/2개, 대파 1/2개, 당면 50g, 물200ml, 올리고당 1큰술, 참기름 1/2큰술, 통깨 약간  밑간 재료 -> 다진마늘 1/2큰술 청주2큰술, 생강 약간 후추 약간"
                return cell
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else {fatalError()}
                cell.steamedChikenImageView.image = UIImage(named: "찜닭1")
                cell.SteamedChickenTextView.text = "닭을 자른후 밑간 재료에 10분간 재워주세요."
                return cell
            } else if indexPath.row == 1 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭2")
                cell.SteamedChickenTextView.text = "감자와 당근은 0.2-0.3cm 두깨로 얄팍하게 썰고 양파는 사방 2-3cm 길이로 깍뚝 썰어주세요. 대파는 어슷 썰어주세요."
                return cell
            }  else if indexPath.row == 2 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭3")
                cell.SteamedChickenTextView.text = "볼에 양념 재료를 넣고 섞은 후 재워둔 닭고기와 손질한 채소를 모두 넣어 버무려 1시간 이상 재워주세요."
                return cell
            }  else if indexPath.row == 3 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭4")
                cell.SteamedChickenTextView.text = "당연과 떡은 20분간 물에 담궈 불려주세요."
                return cell
            }  else if indexPath.row == 4 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭5")
                cell.SteamedChickenTextView.text = "내열 용기에 불려둔 당면과 떡을 깔고 물을 붓고 재워둔 재료를 올려 펼쳐주세요."
                return cell
            }  else if indexPath.row == 5 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭6")
                cell.SteamedChickenTextView.text = "법랑 접시에 내열 용기를 올려 1단에 넣고 광파오븐 <찜닭> 선택 후 조리 진행."
                return cell
            }  else if indexPath.row == 6 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SteamedChickenTableViewCell else { fatalError() }
                cell.steamedChikenImageView.image = UIImage(named: "찜닭7")
                cell.SteamedChickenTextView.text = "완성된 찜닭에 올리고당과 통깨, 참기름을 넣고 골고루 섞은 후 맛있게 즐겨주세요."
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "찜닭 재료"
        case 1: return "조리 순서"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
