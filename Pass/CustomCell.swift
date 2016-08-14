//
//  CustomCell.swift
//  Pass
//
//  Created by Niela Sultana on 8/14/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var nameOfFriend: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
