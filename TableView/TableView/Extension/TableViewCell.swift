//
//  TableViewCell.swift
//  TableView
//
//  Created by center12 on 9/11/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

//  MARK: Property
  
  @IBOutlet weak var lblImageName: UILabel!
  @IBOutlet weak var imgAvatar: UIImageView!
  @IBOutlet weak var lblTitle: UILabel!
  @IBOutlet weak var lblContent: UILabel!
  @IBOutlet weak var lblAddress: UILabel!
  @IBOutlet weak var lblTime: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
