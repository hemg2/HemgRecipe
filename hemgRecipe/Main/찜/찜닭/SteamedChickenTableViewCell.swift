//
//  SteamedChickenTableViewCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SteamedChickenTableViewCell: UITableViewCell {
    @IBOutlet weak var steamedChikenImageView: UIImageView!
    @IBOutlet weak var SteamedChickenTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
