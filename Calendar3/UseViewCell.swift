//
//  UseViewCell.swift
//  Calendar3
//
//  Created by Patrick Moening on 11/16/15.
//  Copyright © 2015 Fiskisoft. All rights reserved.
//

import UIKit

class UseViewCell: UITableViewCell {

    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(use: Use){
        whenLabel.text = use.date
        whatLabel.text = use.thing
    }

}
