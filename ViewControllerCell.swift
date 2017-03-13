//
//  ViewControllerCell.swift
//  TwikTableViewTransition
//
//  Created by Carpenter, Deepak (US - Bengaluru) on 13/03/17.
//  Copyright © 2017 Carpenter, Deepak (India). All rights reserved.
//

import UIKit

class ViewControllerCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var avatarName: UILabel!
    @IBOutlet weak var avatarProfile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
