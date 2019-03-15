//
//  selectedPlayersForGameSessionTableViewCell.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/15/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit

class selectedPlayersForGameSessionTableViewCell: UITableViewCell {

    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
