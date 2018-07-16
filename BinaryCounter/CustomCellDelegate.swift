//
//  CustomCellDelegate.swift
//  BinaryCounter
//
//  Created by Isidro Arzate on 7/9/18.
//  Copyright © 2018 Isidro Arzate. All rights reserved.
//

import Foundation
protocol CustomCellDelegate: class {
    func itemRemoved(by controller: CustomCell, at indexPath: NSIndexPath?)
    func itemadded(by controller: CustomCell, at indexPath: NSIndexPath?)
}
