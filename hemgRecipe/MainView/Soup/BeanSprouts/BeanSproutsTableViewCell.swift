//
//  BeanSproutsTableViewCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class BeanSproutsTableViewCell: UITableViewCell {

    @IBOutlet weak var BeanSproutsTextView: UITextView!
    @IBOutlet weak var BeanSproutsImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
