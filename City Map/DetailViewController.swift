//
//  DetailViewController.swift
//  City Map
//
//  Created by Tiffany Diamanta on 9/30/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableView:UITableView!
    
    var theCities:TheCities!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("it works view did load")
        // Do any additional setup after loading the view.
        self.restaurantImageView.image = UIImage(named: theCities.image)
        
        // Set table view background color
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        
        // Remove extra separator
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        
        // Change separator color
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        
        // Set navigation bar title
        title = self.theCities.name
        
        // Should set add missing constraint on tableview on storyboard and set line to zero on label on storyboard
        tableView.estimatedRowHeight = 36.0;
        tableView.rowHeight = UITableViewAutomaticDimension;
        self.tableView.delegate = self
        self.tableView.dataSource = self
        print("Ini self sizing", tableView.rowHeight = UITableViewAutomaticDimension )
    }
    
    override func viewWillAppear(animated: Bool) {
        print("it works view will it appear")
        super.viewWillAppear(animated)
        
        self.navigationController?.hidesBarsOnSwipe = false
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("it works number of row")
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("it works")
        let cell = tableView.dequeueReusableCellWithIdentifier("DETAIL_CELL", forIndexPath: indexPath) as! DetailTableViewCell
        
        cell.backgroundColor = UIColor.clearColor()
        
        // Configure the cell.....
        cell.mapButton.hidden = true
        
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = theCities.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = theCities.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = theCities.location
            cell.mapButton.hidden = false
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (theCities.isVisited) ? "Yes, I've been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
            
        }
        
        return cell
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
        
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destinationViewController as! MapViewController
            destinationController.theCities = theCities
        }
    }
    
    
}
