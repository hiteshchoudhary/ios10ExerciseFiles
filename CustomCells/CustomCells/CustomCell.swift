//
//  CustomCell.swift
//  CustomCells
//
//  Created by studio on 06/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet var photo: UIImageView!
    
    @IBOutlet var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
