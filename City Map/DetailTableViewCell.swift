//
//  DetailTableViewCell.swift
//  City Map
//
//  Created by Tiffany Diamanta on 9/30/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    @IBOutlet weak var fieldLabel:UILabel!
    @IBOutlet weak var valueLabel:UILabel!
    @IBOutlet var mapButton:UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

