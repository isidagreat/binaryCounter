//
//  CustomTableViewController.swift
//  BinaryCounter
//
//  Created by Isidro Arzate on 7/9/18.
//  Copyright © 2018 Isidro Arzate. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController, CustomCellDelegate {

    
 var nums = [1, 10, 100, 1000, 10000, 100000, 1000000,10000000,100000000,1000000000,10000000000,100000000000,1000000000000,10000000000000,100000000000000,1000000000000000
    ]
    var sum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        sumTotal()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet weak var totalSum: UILabel!
    func sumTotal(){
        for i in 0...nums.count - 1{
            sum += nums[i]
        }
        print(sum)
        totalSum.text = "Total \(sum)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nums.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.printingLabel.text = "\(nums[indexPath.row])"
        if nums[indexPath.row] > 24 {
            cell.leftButton.backgroundColor = UIColor.green
        } else {
            cell.leftButton.backgroundColor = UIColor.red
        }
        cell.backgroundColor = UIColor.blue
        cell.delegate = self
        cell.indexPath = indexPath as NSIndexPath
        // return cell so that Table View knows what to draw in each row
        return cell
    }

    @IBOutlet weak var TheCell: CustomCell!
    
    func itemadded(by controller: CustomCell, at indexPath: NSIndexPath?) {
        print("Made it to Add")
        if let ip = indexPath{
        print(ip.row)
        sum += nums[ip.row]
        print(sum)
        totalSum.text = "Total: \(sum)"
        }
    }
    
    func itemRemoved(by controller: CustomCell, at indexPath: NSIndexPath?) {
        print("Made it to Remove")
        if let ip = indexPath{
            print(ip.row)
            sum -= nums[ip.row]
            print(sum)
            totalSum.text = "Total: \(sum)"
        }
        
    }
 
}
