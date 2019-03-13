//
//  Player.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/1/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import Foundation
import RealmSwift



class Player: Object {
    
    @objc dynamic var name:String = ""
    @objc dynamic var inGameSession:Bool = true
    @objc dynamic var avatarURL = ""
    
//    override static func primaryKey() -> String? {
//        return "name"
//    }
    
}
