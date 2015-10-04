//
//  CityTableViewController.swift
//  City Map
//
//  Created by Tiffany Diamanta on 10/1/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

import UIKit


/* Jl. Ahmad Yani No.288 Gayungan Kota SBY, Jawa Timur 60234 */

class CityTableViewController: UITableViewController {
    var place:[TheCities] = [
        TheCities(name: "Monkasel", type: "Historical Monument", location: "Jalan Pemuda No.39 Genteng Kota Surabaya, Jawa Timur 60271", image: "cafedeadend.jpg", isVisited: true),
        TheCities(name: "Tugu Pahlawan", type: "Historical Site", location: "Jalan Pahlawan, Kel. Alun-Alun Contong Kec. Bubutan Jawa Timur 60175", image: "homei.jpg", isVisited: false),
        TheCities(name: "House Of Sampoerna", type: "Museum, Tea & Cafe House", location: "Taman Sampoerna No.6 Surabaya Jawa Timur 60163", image: "teakha.jpg", isVisited: false),
        TheCities(name: "Taman Bungkul", type: "City Park", location: "Jalan Taman Bungkul Darmo Wonokromo Kota SBY, Jawa Timur 60291", image: "cafeloisl.jpg", isVisited: false),
        TheCities(name: "Kebun Binatang (Surabaya Zoo)", type: "French", location: "Jl. Setail No. 1 Surabaya Jawa Timur 60291", image: "petiteoyster.jpg", isVisited: false),
        TheCities(name: "Museum Kesehatan Dr. Adhyatma, MPH", type: "Museum", location: "Jl. Indrapura No. 17 Kemayoran Krembangan Kota SBY, Jawa Timur 60176", image: "forkeerestaurant.jpg", isVisited: false),
        TheCities(name: "Tunjungan Plaza", type: "Shopping Center", location: "Jl. Basuki Rahmat No. 8-12 Kedungdoro Surabaya Jawa Timur 60261", image: "posatelier.jpg", isVisited: false),
        TheCities(name: "Gedung Grahadi (Grahadi Building)", type: "Historical Building", location: "Jalan Gubernur Suryo Surabaya Jawa Timur 60271", image: "bourkestreetbakery.jpg", isVisited: false),
        TheCities(name: "Masjid Muhammad Cheng Hoo (Muhammad Cheng Hoo Mosque)", type: "Unique religious site", location: "Jalan Gading No. 2, Kel. Ketabang, Kec. Genteng Jawa Timur 60272", image: "haighschocolate.jpg", isVisited: false),
        TheCities(name: "Monumen Suroboyo (Suroboyo Monument)", type: "City Monument", location: "Jl. Setail No. 1 Surabaya Jawa Timur 60291", image: "palominoespresso.jpg", isVisited: false),
        TheCities(name: "Jalesveva Jayamahe Monument", type: "City Monument", location: "None", image: "upstate.jpg", isVisited: false),
        TheCities(name: "Monument Bambu Runcing", type: "City Monument", location: "Jl. Panglima Sudirman Genteng Kota SBY, Jawa Timur 60271", image: "traif.jpg", isVisited: false),
        TheCities(name: "Monumen Perjuangan POLRI", type: "City Monument", location: "Jl. Raya Darmo Tegalsari Kota SBY, Jawa Timur 60265", image: "grahamavenuemeats.jpg", isVisited: false),
        TheCities(name: "Surabaya Town Square", type: "Shopping Center", location: "Jalan Adityawarman No.55 Sawunggaling Wonokromo Kota SBY, Jawa Timur 60242", image: "wafflewolf.jpg", isVisited: false),
        TheCities(name: "Plaza Surabaya", type: "Shopping Center", location: "Jl. Pemuda No.33-37 Genteng Kota SBY, Jawa Timur 60271", image: "fiveleaves.jpg", isVisited: false),
        TheCities(name: "Royal Plaza", type: "Shopping Center", location: "Wonokromo Kota SBY 60243", image: "cafelore.jpg", isVisited: false),
        TheCities(name: "Grand City mall", type: "Shopping Center", location: "Jalan Kusuma Bangsa Ketabang Surabaya Jawa Timur 60251", image: "confessional.jpg", isVisited: false),
        TheCities(name: "Ciputra World", type: "Shopping Center", location: "Jl. Mayjen Sungkono No.87 Dukuh Pakis Kota SBY, Jawa Timur 60224", image: "barrafina.jpg", isVisited: false),
        TheCities(name: "Ciputra Water Park", type: "Amusement Park", location: "CitraLAnd Surabaya Waterpark Boulevard Sambikerep Kota SBY, Jawa Timur 60219", image: "donostia.jpg", isVisited: false),
        TheCities(name: "Pasar Genteng (Genteng market)", type: "Traditional Market", location: "Jl Genteng Besar Jawa Timur 60275", image: "royaloak.jpg", isVisited: false),
        TheCities(name: "City of Tomorrow Mall", type: "Shopping Center", location: "Jl. Ahmad Yani No.288 Gayungan Kota SBY, Jawa Timur 60234", image: "thaicafe.jpg", isVisited: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Empty back button title
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        // Self Sizing Cells
        self.tableView.estimatedRowHeight = 80.0;
        self.tableView.rowHeight = UITableViewAutomaticDimension;
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return self.place.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        // Configure the cell...
        let nameCity = place[indexPath.row]
        print("The value", cell.nameLabel)
        cell.nameLabel.text = nameCity.name
        cell.thumbnailImageView.image = UIImage(named: nameCity.image)
        cell.locationLabel.text = nameCity.location
        cell.typeLabel.text = nameCity.type
        
        
        // Circular image
        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction] {
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Share", handler: { (action:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .ActionSheet)
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.Default, handler: nil)
            let facebookAction = UIAlertAction(title: "Facebook", style: UIAlertActionStyle.Default, handler: nil)
            let emailAction = UIAlertAction(title: "Email", style: UIAlertActionStyle.Default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
            
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(facebookAction)
            shareMenu.addAction(emailAction)
            shareMenu.addAction(cancelAction)
            
            self.presentViewController(shareMenu, animated: true, completion: nil)
            }
        )
        
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete",handler: {
            (action:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            
            // Delete the row from the data source
            self.place.removeAtIndex(indexPath.row)
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
            }
        )
        
        deleteAction.backgroundColor = UIColor(red: 237.0/255.0, green: 75.0/255.0, blue: 27.0/255.0, alpha: 1.0)
        shareAction.backgroundColor = UIColor(red: 215.0/255.0, green: 215.0/255.0, blue: 215.0/255.0, alpha: 1.0)
        
        return [deleteAction, shareAction]
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! DetailViewController
                destinationController.theCities = place[indexPath.row]
            }
        }
}

}