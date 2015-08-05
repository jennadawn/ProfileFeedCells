//
//  profileTableViewCell.swift
//  ProfileFeedCells
//
//  Created by Jenna Sampson on 7/26/15.
//  Copyright (c) 2015 Jenna Sampson. All rights reserved.
//

import UIKit
import AVFoundation

class profileTableViewCell: UITableViewCell {
    
    var player : AVAudioPlayer!
    var meterTimer:NSTimer!
    var recordedAudio:RecordedAudio!
    var filePath:NSURL!
    
    @IBOutlet weak var profileCellImage: UIImageView!
  
    @IBOutlet weak var profilePublicSwitch: UIView!
    
    @IBOutlet weak var profilePublicLabel: UILabel!
    
    @IBOutlet weak var profileTitleLabel: UILabel!
    
    @IBOutlet weak var profileCellImageLower: UIView!
    
    @IBOutlet weak var playButtonLabel: UIButton!
    
    @IBAction func playPressed(sender: AnyObject) {
    
        player = AVAudioPlayer(contentsOfURL: filePath, error: nil)
        player.prepareToPlay()
        player.play()
        
        println("play")
        
        playButtonLabel.setTitle("Stop", forState:.Normal)
        
        println("Stop")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

        
}