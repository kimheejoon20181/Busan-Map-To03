//
//  plistTableViewController.swift
//  Busan-Map-To03
//
//  Created by dit08 on 2019. 10. 18..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class plistTableViewController: UITableViewController{
    var contents = NSArray()
    
    
    //var data = ["a","b","c"]
    //var detailData = ["one","two","three"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "Busan Map Tour"
        
        let path = Bundle.main.path(forResource: "geoData", ofType: "plist")
        contents = NSArray(contentsOfFile: path!)!
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contents.count
        //return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)

        let cTitle = (contents[indexPath.row] as AnyObject).value(forKey: "title")
        let cAddress = (contents[indexPath.row] as AnyObject).value(forKey: "address")
        
        print(cTitle as Any)
        
        cell.textLabel?.text = cTitle as? String
        cell.detailTextLabel?.text = cAddress as? String
        
        // Configure the cell...
      /*  let myData = data[indexPath.row]
        let myDetail = detailData[indexPath.row]
        cell.textLabel?.text = myData
        cell.detailTextLabel?.text = myDetail  */
        

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
