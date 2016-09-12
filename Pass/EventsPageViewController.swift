//
//  EventsPageViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class EventsPageViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {

    @IBOutlet var eventsNearTableView: UITableView!
    

    @IBOutlet var eventsJoinedTableView: UITableView!
    
    var enNames = ["Restaurant Opening", "Lantern Festival"]
    
    var enImages = [UIImage(named: "RestaurantOpening"), UIImage(named: "LanternFestival")]
    
    var enLocations = ["0.21 m", "0.50 m"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return enNames.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellN", forIndexPath: indexPath) as! EventsNearCustomCell
        
        cell.photo.image = enImages[indexPath.row]
        cell.name.text = enNames[indexPath.row]
        cell.location.text = enLocations[indexPath.row]
        
        return cell;
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
