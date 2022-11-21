//
//  SoftTofuTableViewCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/22.
//

import UIKit

class SoftTofuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var softTofuImageView: UIImageView!
    @IBOutlet weak var softTofuTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
