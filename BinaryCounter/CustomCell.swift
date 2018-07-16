//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Isidro Arzate on 7/9/18.
//  Copyright © 2018 Isidro Arzate. All rights reserved.
//

import Foundation
import UIKit
class CustomCell: UITableViewCell{
    weak var delegate:CustomCellDelegate?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var printingLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    @IBAction func rightButton(_ sender: UIButton) {
        print("Pressed Added")
        delegate?.itemadded(by: self, at: indexPath)
    }
    @IBAction func leftButton(_ sender: UIButton) {
        delegate?.itemRemoved(by: self, at: indexPath)
    }
}
