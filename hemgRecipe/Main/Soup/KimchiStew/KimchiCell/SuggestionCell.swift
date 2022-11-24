//
//  SuggestionCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/23.
//

import UIKit

class SuggestionCell: UITableViewCell {
    
    
    
    @IBOutlet weak var suggestionImageView: UIImageView!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
