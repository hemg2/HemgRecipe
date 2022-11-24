//
//  MisoExplanationCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/24.
//

import UIKit

class MisoExplanationCell: UITableViewCell {

    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var subTitleTextView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
