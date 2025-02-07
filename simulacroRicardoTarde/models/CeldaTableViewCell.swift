//
//  CeldaTableViewCell.swift
//  simulacroRicardoTarde
//
//  Created by Eduardo Segovia on 05/02/2025.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {
    @IBOutlet weak var lblVotado: UILabel!
    @IBOutlet weak var lblConteo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
