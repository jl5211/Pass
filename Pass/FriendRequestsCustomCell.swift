//
//  FriendRequestsCustomCell.swift
//  Pass
//
//  Created by Jesus Leal on 9/11/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class FriendRequestsCustomCell: UITableViewCell {


    @IBOutlet var photo: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
