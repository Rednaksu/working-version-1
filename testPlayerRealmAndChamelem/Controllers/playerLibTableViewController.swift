//
//  playerLibTableViewController.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/1/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift

class playerLibTableViewController: UITableViewController {
    
    let realm = try! Realm()
    
   
    var playerLib : Results<Player>?

    @IBAction func createNewPlayer(_ sender: Any) {
        performSegue(withIdentifier: "toPlayerCreation", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
         loadPlayerLib()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        
        
        return 1
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return playerLib?.count ?? 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "playerProfile", for: indexPath)
        
//        let cell = super.tableView(tableView, cellForRowAt: indexPath)
//
//        if let gamer = playerLib?[indexPath.row] {
        
        cell.textLabel?.text = playerLib?[indexPath.row].name ?? "No players Added Yet"
            
            
        
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


//    func save(category: Player) {
//        do {
//            try realm.write {
//                realm.add(new)
//            }
//        } catch {
//            print("Error saving category \(error)")
//        }
//
//        tableView.reloadData()
//
//    }

    
    func loadPlayerLib() {
        
      playerLib  = realm.objects(Player.self)

      tableView.reloadData()

  }

}

