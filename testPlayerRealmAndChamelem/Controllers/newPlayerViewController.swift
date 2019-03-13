//
//  newPlayerViewController.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/1/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
import ChameleonFramework
import Kingfisher

class newPlayerViewController: UIViewController,UITextFieldDelegate ,UIImagePickerControllerDelegate{
    
    
    
    
    
    @IBOutlet weak var insertPlayerName: UITextField!{
        didSet{
            insertPlayerName.delegate = self
            
        }
    }
    
    @IBOutlet weak var playerAvatar: UIView!
    
    
    @IBOutlet weak var playerAdorable: UIImageView!
    
    var strokeCounter = arc4random() % 99
    
    @objc dynamic var newPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewFormatting()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePlayer(_ sender: UIBarButtonItem) {
        
        print(strokeCounter)
        newPlayer.name = insertPlayerName.text ?? "New Player"
        newPlayer.inGameSession = true
        newPlayer.avatarURL = ("https://api.adorable.io/avatars/285/"+String(strokeCounter)+".png")
        
        let realm = try! Realm()
        try! realm.write{
            realm.add(newPlayer)
            print(newPlayer.inGameSession.description)
            
            
            
        }
        
        
        navigationController?.popViewController(animated: true)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
       //  Mark: moving view up when keayboard appears
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        return true
    }

    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func viewFormatting(){
        
        self.navigationController?.hidesNavigationBarHairline = true
        
        playerAdorable.layer.masksToBounds = true
        playerAdorable.layer.cornerRadius = playerAdorable.frame.height/2
        playerAdorable.layer.borderWidth = 0.5
        playerAdorable.backgroundColor = UIColor.flatWhite()
        
        
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: [UIColor.flatGray(),UIColor.flatGray(),UIColor.flatGray(),UIColor.flatPlum()])
        insertPlayerName.layer.masksToBounds = true
        insertPlayerName.layer.cornerRadius = 8
        insertPlayerName.layer.borderWidth = 0.5
        insertPlayerName.backgroundColor = UIColor.flatWhite()
        
    }
    
    
    
}
