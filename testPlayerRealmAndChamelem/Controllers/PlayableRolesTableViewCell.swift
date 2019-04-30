//
//  PlayableRolesTableViewCell.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/11/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit

// switch communication protocol

//protocol switch2Protocol {
//
//    func didTapSwitch(cell:PlayableRolesTableViewCell)
//
//}

class PlayableRolesTableViewCell: UITableViewCell {
    
//    // declaration of the delegate
//
//    var delegate: switch2Protocol!
    
    @IBOutlet weak var roleAvatar: UIImageView!
    
    @IBOutlet weak var roleLabel: UILabel!
    
    @IBAction func roleIsActive(_ sender: UISwitch) {
//        delegate.didTapSwitch(cell:self)
        
        
    }
    
    @IBOutlet weak var roleSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    

}
