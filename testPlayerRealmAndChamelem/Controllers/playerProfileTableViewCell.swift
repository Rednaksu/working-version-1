//
//  playerProfileTableViewCell.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/1/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit

// switch communication protocol
protocol switchProtocol {
    
    func didTapSwitch(cell:playerProfileTableViewCell)
    
}

class playerProfileTableViewCell: UITableViewCell {

    // declaration of the delegate
    var delegate: switchProtocol!
    
    @IBOutlet weak var playerAvatar: UIImageView!
    
    @IBOutlet weak var playerName: UILabel!
    // will need action and outlet to make protocol / delegation work
    
    @IBAction func activityChanged(_ sender: UISwitch) {
        
        delegate.didTapSwitch(cell:self)
      
    }
    
    @IBOutlet weak var activitySwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
        
          
    }
// configuring switch in cell
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
       
    }

}
