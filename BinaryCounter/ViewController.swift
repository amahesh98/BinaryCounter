//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Ashwin Mahesh on 7/10/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var total:Int=0
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        tableView.rowHeight=70
        totalLabel.text="Total: \(total)"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! CustomCell
        
        cell.valueLabel.text=String(Int(pow(10.0, Double(indexPath.row))))
        cell.controller=self
        return cell
    }
}
