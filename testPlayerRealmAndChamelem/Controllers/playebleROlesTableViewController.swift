//
//  playebleROlesTableViewController.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/11/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit



class playebleROlesTableViewController: UITableViewController {
    
    
   
  
    
//    let box = UIView()
//    superview.addSubview(box)
//    
//    box.snp.makeConstraints { (make) -> Void in
//    make.edges.equalTo(superview).inset(UIEdgeInsetsMake(20, 20, 20, 20))
//    }
    
    
    let playableRoles = ["Vampire", "Villager","Priest","Carpenter","Chaman","Virgin","Trader","Werewolf","Druid","Goul","Happy Trigger","Fortune Teller","Little Boy","Dracula","Crusader", "Tinker" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  tableView.backgroundColor = UIColor.flatWhite()
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        self.tableView.separatorColor = UIColor.flatWhite()
        
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
        return playableRoles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playableRoles", for: indexPath) as! PlayableRolesTableViewCell

        cell.roleLabel?.text = playableRoles[indexPath.row]
        cell.roleAvatar?.image = UIImage(named: (playableRoles[indexPath.row])) ?? UIImage(named:"death")
        
        // Configure the cell...
        
//        cell.layer.masksToBounds = true
//        cell.layer.cornerRadius = cell.layer.frame.height/4
      
        
        
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

}
