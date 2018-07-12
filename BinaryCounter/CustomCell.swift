//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Ashwin Mahesh on 7/10/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

protocol CustomCellDelegate{
    func subtractPushed(value:Int)
    func addPushed(value:Int)
}

class CustomCell: UITableViewCell{
    
    var delegate:CustomCellDelegate!
    
    var controller:UIViewController?
    @IBOutlet var valueLabel: UILabel!
    @IBAction func subtractPushed(_ sender: UIButton) {
        print("Pushed subtract")
        delegate.subtractPushed(value: Int(valueLabel.text!)!)
//        if let vc = controller as? ViewController{
//            vc.total -= Int(valueLabel.text!)!
//            print(vc.total)
//            vc.totalLabel.text="Total: \(vc.total)"
//        }
    }
    @IBAction func addPushed(_ sender: UIButton) {
        print("Pushed add")
        delegate.addPushed(value: Int(valueLabel.text!)!)
//        if let vc = controller as? ViewController{
//            vc.total += Int(valueLabel.text!)!
//            print(vc.total)
//            vc.totalLabel.text="Total: \(vc.total)"
//        }
    }
}
