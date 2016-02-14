//
//  TweetCell.swift
//  Twitter
//
//  Created by Saul Soto on 2/14/16.
//  Copyright © 2016 CodePath - Saul Soto. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userAdd: UILabel!
    @IBOutlet weak var userDescription: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    var tweet: Tweet! {
        didSet {
            userName.text = tweet.name
        }
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
