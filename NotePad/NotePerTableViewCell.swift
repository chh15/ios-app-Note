//
//  NotePerTableViewCell.swift
//  NotePad
//
//  Created by apple on 2018/12/2.
//  Copyright © 2018年 NJU.czf. All rights reserved.
//

import UIKit

class NotePerTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var PerNote: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
