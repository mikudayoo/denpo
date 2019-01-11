//
//  myTableViewCell.swift
//  denpo
//
//  Created by 横尾美空 on 2018/12/12.
//  Copyright © 2018年 横尾美空. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {
    @IBOutlet var dayLabel : UILabel!
    @IBOutlet var messageLabel : UILabel!
    @IBOutlet var iconImageView : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
