//
//  ExplanationCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/23.
//

import UIKit

class ExplanationCell: UITableViewCell {

    
    @IBOutlet weak var firstTextView: UITextView!
    @IBOutlet weak var secondTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
