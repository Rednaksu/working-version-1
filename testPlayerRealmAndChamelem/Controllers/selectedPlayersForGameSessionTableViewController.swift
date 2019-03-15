//
//  selectedPlayersForGameSessionTableViewController.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/15/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit
import RealmSwift
import Kingfisher

class selectedPlayersForGameSessionTableViewController: UITableViewController {
    
    
    let realm = try! Realm()
    var playersInSession : Results<Player>?
    
    var   avatarUrl = URL(string: "")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playersInSession = realm.objects(Player.self).sorted(byKeyPath: "order")
        
        loadPlayersInSession()
        floatingButton()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return playersInSession?.count ?? 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectedPlayers", for: indexPath) as! selectedPlayersForGameSessionTableViewCell
        
        
        
        avatarUrl = URL(string:(playersInSession?[indexPath.row].avatarURL)!)
        
        cell.playerName?.text = playersInSession?[indexPath.row].name ?? "No players Added Yet"
        cell.playerAvatar.kf.setImage(with:avatarUrl)
        
        cell.playerAvatar.layer.masksToBounds = true
        cell.playerAvatar.layer.cornerRadius = cell.playerAvatar.frame.height/4
        cell.playerAvatar.layer.borderWidth = 2
        cell.playerAvatar.layer.borderColor = UIColor.flatWhite()?.cgColor
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        try! realm.write {
            let sourceObject = playersInSession?[sourceIndexPath.row]
            let destinationObject = playersInSession?[destinationIndexPath.row]
            let destinationObjectOrder = destinationObject?.order
            
            
            if sourceIndexPath.row < destinationIndexPath.row{
                
                for index in sourceIndexPath.row...destinationIndexPath.row{
                    let object = playersInSession?[index]
                    object?.order -= 1
                }
            }else{
                for index in (destinationIndexPath.row..<sourceIndexPath.row).reversed(){
                    let object = playersInSession?[index]
                    object?.order += 1
                }
            }
            sourceObject?.order = destinationObject?.order ?? 0
        }
    }
        
        func loadPlayersInSession() {
            
            playersInSession  = realm.objects(Player.self)
            
            tableView.reloadData()
            
            
            
        }
    
    func floatingButton(){
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 220, y: 380, width: 80, height: 80)
        button.setTitle("Next", for: .normal)
        button.backgroundColor = UIColor.flatBlue()
        button.clipsToBounds = true
        button.layer.cornerRadius = button.frame.width/2
        button.layer.borderColor = UIColor.flatWhite()?.cgColor
        button.layer.borderWidth = 3
        
        // MARK to destination VC
//        button.addTarget(self, action: #selector(DestinationVC.buttonTapped), for: UIControl.touchUpInside)
       self.view.addSubview(button)
        
      
 }
        
}
