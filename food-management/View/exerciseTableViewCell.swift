//
//  exerciseTableViewCell.swift
//  food-management
//
//  Created by 준수김 on 2021/09/28.
//

import UIKit

class exerciseTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel1: UILabel!
    @IBOutlet weak var detailLabel1: UILabel!
    @IBOutlet weak var calorieLabel1: UILabel!
    @IBOutlet weak var exerciseImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
