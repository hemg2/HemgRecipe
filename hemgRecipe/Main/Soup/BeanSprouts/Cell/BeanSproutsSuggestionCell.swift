//
//  BeanSproutsSuggestionCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/24.
//

import UIKit

class BeanSproutsSuggestionCell: UITableViewCell {
    
    @IBOutlet weak var suggestionImageView: UIImageView!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
