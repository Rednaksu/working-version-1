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

class newPlayerViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var insertPlayerName: UITextField!{
        didSet{
            insertPlayerName.delegate = self
            
        }
    }
    
    @IBOutlet weak var playerAvatar: UIView!
    
    
    @objc dynamic var newPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewFormatting()
        
    
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePlayer(_ sender: UIBarButtonItem) {
        newPlayer.name = insertPlayerName.text ?? "New Player"
        
        let realm = try! Realm()
        try! realm.write{
            realm.add(newPlayer)
            print(newPlayer)
            
            
            
    }

            
navigationController?.popViewController(animated: true)
   
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
         // Mark: moving view up when keayboard appears
        
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
        
        playerAvatar.layer.masksToBounds = true
        playerAvatar.layer.cornerRadius = playerAvatar.frame.height/2
        playerAvatar.layer.borderWidth = 0.5
        playerAvatar.backgroundColor = UIColor.flatWhite()
        
        
        view.backgroundColor = UIColor(gradientStyle: .radial, withFrame: view.frame, andColors: [UIColor.flatGray(),UIColor.flatGray(),UIColor.flatGray(),UIColor.flatPlum()])
        insertPlayerName.layer.masksToBounds = true
        insertPlayerName.layer.cornerRadius = 8
        insertPlayerName.layer.borderWidth = 0.5
        insertPlayerName.backgroundColor = UIColor.flatWhite()
        
    }

}
