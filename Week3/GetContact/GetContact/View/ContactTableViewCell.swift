//
//  ContactTableViewCell.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setContact(_ contact: Contact) {
        nameLabel.text = "\(contact.firstname) \(contact.lastname)"
        
        switch contact.tag {
        case "Red":
           nameLabel.textColor = UIColor.red
           phoneLabel.textColor = UIColor.red
        case "Yellow":
            nameLabel.textColor = UIColor.yellow
            phoneLabel.textColor = UIColor.yellow
        case "Green":
            nameLabel.textColor = UIColor.green
            phoneLabel.textColor = UIColor.green
        case "Blue":
            nameLabel.textColor = UIColor.blue
            phoneLabel.textColor = UIColor.blue
        default:
            print()
        }
        
        phoneLabel.text = contact.phone
    }
    
}
