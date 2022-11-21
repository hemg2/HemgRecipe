//
//  MisoTableViewCell.swift
//  hemgRecipe
//
//  Created by 1 on 2022/11/21.
//

import UIKit

class MisoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var misoImageView: UIImageView!
    @IBOutlet weak var misoTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
