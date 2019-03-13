//
//  PlayableRolesTableViewCell.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/11/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit

class PlayableRolesTableViewCell: UITableViewCell {
    @IBOutlet weak var roleAvatar: UIImageView!
    
    @IBOutlet weak var roleLabel: UILabel!
    
    @IBAction func roleIsActive(_ sender: UISwitch) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
