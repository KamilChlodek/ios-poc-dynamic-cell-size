//
//  TextTableViewCell.swift
//  DynamicCellSizing
//
//  Created by kchlodek on 12.10.2016.
//  Copyright © 2016 kchlodek. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
