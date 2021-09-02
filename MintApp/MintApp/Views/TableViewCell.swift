//
//  TableViewCell.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var tableImageView: UIImageView!
    @IBOutlet weak var tableTitleLabel: UILabel!
    @IBOutlet weak var tableForwoardImageView: UIImageView!
    
    func setup (_ model: TableViewModel) {
        tableImageView.image = UIImage(systemName: model.image)
        tableTitleLabel.text = model.title
    }
    
}
