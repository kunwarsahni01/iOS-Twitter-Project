//
//  TableViewCell.swift
//  Twitter
//
//  Created by Kunwar Sahni on 2/9/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    @IBAction func retweetTapped(_ sender: Any) {
        
    }
    
    @IBAction func likeTapped(_ sender: Any) {
        
    }
    
}
