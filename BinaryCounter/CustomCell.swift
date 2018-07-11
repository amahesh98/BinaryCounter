//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Ashwin Mahesh on 7/10/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit
class CustomCell: UITableViewCell{
    
    var controller:UIViewController?
    @IBOutlet var valueLabel: UILabel!
    @IBAction func subtractPushed(_ sender: UIButton) {
        print("Pushed subtract")
        if let vc = controller as? ViewController{
            vc.total -= Int(valueLabel.text!)!
            print(vc.total)
            vc.totalLabel.text="Total: \(vc.total)"
        }
    }
    @IBAction func addPushed(_ sender: UIButton) {
        print("Pushed add")
        if let vc = controller as? ViewController{
            vc.total += Int(valueLabel.text!)!
            print(vc.total)
            vc.totalLabel.text="Total: \(vc.total)"
        }
    }
}
