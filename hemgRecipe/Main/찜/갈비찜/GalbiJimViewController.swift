//
//  GalbijJimViewController.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class GalbiJimViewController: UIViewController {
    
    
    
    @IBOutlet weak var galbiJimTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "갈비찜"
    }
}


extension GalbiJimViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 6
        } else if section == 2{
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell
                else {fatalError()}
                cell.galbiJimImageView.image = UIImage(named: "갈비찜재료")
                cell.galbiJimTextView.text = "돼지갈비(찜용) 1kg, 무1/3개, 양파 1개, 표고버섯 4개, 당근 1/2개, 마른고추 2개, 대파 1/2개, 실파 1대, 통깨 약간, 물 300ml                                                              고기 삶는 물 재료 -> 물 900ml, 대파 1/2개 마늘 5쪽, 월계수잎 3장, 통후추 10알 양념장 재료 ==> 간장 9큰술, 맛술 4큰술, 설탕 3큰술, 물엿 3큰술, 다진파 2큰술, 다진마늘 1큰술, 참기름 1큰술, 생강가루 1/2작은술, 후추약간"
                return cell
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else {fatalError()}
                cell.galbiJimImageView.image = UIImage(named: "갈비찜1")
                cell.galbiJimTextView.text = "돼지갈비는 찬물에 1시간 정도 담궈 핏물을 빼주세요."
                return cell
            } else if indexPath.row == 1 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else { fatalError() }
                cell.galbiJimImageView.image = UIImage(named: "갈비찜2")
                cell.galbiJimTextView.text = "냄비에 고기 삶는 물 재료를 넣고 끓으면 돼지갈비를 넣은 후 10분 정도 삶아 찬물에 씻어주세요."
                return cell
            }  else if indexPath.row == 2 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else { fatalError() }
                cell.galbiJimImageView.image = UIImage(named: "갈비찜3")
                cell.galbiJimTextView.text = "무와 당근, 양파는 큼직하게 자르고, 표고버섯은 4등분으로 잘라주세요. 대파와 마른고추는 어슷하게 썰고, 실파는 송송 썰어주세요."
                return cell
            }  else if indexPath.row == 3 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else { fatalError() }
                cell.galbiJimImageView.image = UIImage(named: "갈비찜4")
                cell.galbiJimTextView.text = "냄비에 돼지갈비와 양념장, 물을 넣고 강불에서 20분정도 끓이다가 무와 당근, 마른 고추를 넣고 뚜껑을 닫은 후 중약불에서 20분 정도 끓여 주세요."
                return cell
            }  else if indexPath.row == 4 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else { fatalError() }
                cell.galbiJimImageView.image = UIImage(named: "갈비찜5")
                cell.galbiJimTextView.text = "무가 믹으면 양파와 표고버섯, 대파를 넣어 국물이 자작해 질때까지 5분정도 졸여주세요."
                return cell
            }  else if indexPath.row == 5 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else { fatalError() }
                cell.galbiJimImageView.image = UIImage(named: "갈비찜6")
                cell.galbiJimTextView.text = "오목한 그릇에 돼지갈비찜을 담고, 통깨와 송송 썬 실파를 뿌려 마무리해주세요."
                return cell
            } 
        }
        if indexPath.section == 2 {
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? GalbiJimTableViewCell else {fatalError()}
                cell.galbiJimImageView.image = UIImage(named: "갈비찜1")
                cell.galbiJimTextView.text = "갈비는 찬물에 1시간 정도 꼭 담군 후 조리 진행."
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "갈비찜 재료"
        case 1: return "갈비찜 조리 순서"
        case 2: return "중요 포인트"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}
