//
//  profileTableViewController.swift
//  ProfileFeedCells
//
//  Created by Jenna Sampson on 7/26/15.
//  Copyright (c) 2015 Jenna Sampson. All rights reserved.
//

import UIKit
import AVFoundation

class profileTableViewController: UITableViewController, UITableViewDataSource {
    
    var receivedAudio : RecordedAudio!
    var player : AVAudioPlayer!
    var avPlayer: AVAudioPlayer!
    var recordedAudio:RecordedAudio!
    
    var profileCellImage = [String]()
    var profilePublicSwitch = [String]()
    var profilePublicLabel = [String]()
    
    

    @IBAction func publicSwitchState(sender: UISwitch) {
        
        if sender.on {
            print("public on")
        } else {
            print("public off")
   
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemCount = GlobalFunctions.itemsInSoundDir().count

        println("we have \(itemCount) sounds!")
        
        
        
        // contentsOfDirectoryAtURL
        
        profileCellImage = ["cloud3.jpg", "cloud3.jpg"]
        
        profilePublicSwitch = ["On", "Off"]
            
        profilePublicLabel = ["downloadable", "not downloadable"]
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
            
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return GlobalFunctions.itemsInSoundDir().count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("profileCellImage", forIndexPath: indexPath) as! profileTableViewCell
        
        let row = indexPath.row
        
        cell.profilePublicLabel.font =
            UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.profilePublicLabel.text = profilePublicLabel[0]
        
        cell.profileTitleLabel.font =
            UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        let thisFilePath = GlobalFunctions.itemsInSoundDir()[row]
        let dirPath = GlobalFunctions.documentDirectory()
        var pathArray = [dirPath, thisFilePath]
        
        cell.filePath = NSURL.fileURLWithPathComponents(pathArray)
        
    
        cell.profileTitleLabel.text = "Sound \(row + 1) Title"
         
        cell.profilePublicLabel.text = profilePublicLabel[0]
        
        cell.profileCellImage.image = UIImage(named: profileCellImage[0])
        
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
