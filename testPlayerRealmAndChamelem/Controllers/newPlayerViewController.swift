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

class newPlayerViewController: UIViewController {

    @IBOutlet weak var insertPlayerName: UITextField!
    
    @objc dynamic var newPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
