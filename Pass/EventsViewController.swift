//
//  EventsViewController.swift
//  Pass
//
//  Created by Jesus Leal on 9/11/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var controller: UISegmentedControl!
    
    
    @IBOutlet var tableView: UITableView!

    
    var enNames = ["Restaurant Opening", "Lantern Festival"]
    
    var enImages = [UIImage(named: "RestaurantOpening"), UIImage(named: "LanternFestival")]
    
    var enDescription = ["There will be 50% off during lunch hour!", "Dont miss your chance to experience Repunzel LIVE!"]
    
    var enAddress = ["6 Metrotech", "570 East 2nd Street"]
    
    var enArea = ["Brooklyn, NY 11201", "Brooklyn, NY 11218"]
    
    
    
    var ejNames = ["Spa Hour"]
    
    var ejImages = [UIImage(named: "SpaHour")]
    
    var ejDescription = ["Dont you just want to take an hour to relax?"]
    
    var ejAddress = ["32 38th Street"]
    
    var ejArea = ["Astoria, NY 11103"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeTableView(sender: AnyObject) {
        
       self.tableView.reloadData()
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if controller.selectedSegmentIndex == 0{
            return enNames.count;
        }
        
        else {
            return ejNames.count;
        }
        

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! EventsNearCustomCell
        
        if controller.selectedSegmentIndex == 0 {
            cell.photo.image = enImages[indexPath.row]
            cell.name!.text = enNames[indexPath.row]
            cell.location.text = enArea[indexPath.row]
        }
        
        if controller.selectedSegmentIndex == 1{
            cell.photo.image = ejImages[indexPath.row]
            cell.name.text = ejNames[indexPath.row]
            cell.location.text = ejArea[indexPath.row]
        }
        
        return cell;
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        let row: Int = indexPath.row
        
        
        if controller.selectedSegmentIndex == 0 {
            self.performSegueWithIdentifier("viewEventSegue", sender: row)
        }
        
        else {
            self.performSegueWithIdentifier("viewJoinedEventSegue", sender: row)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewEventSegue" {
            if let secondViewController = segue.destinationViewController as? ViewAnEventViewController{
                let row = sender as! Int
                secondViewController.name = enNames[row]
                secondViewController.area = enArea[row]
                secondViewController.photo = enImages[row]
                secondViewController.address = enAddress[row]
                secondViewController.descript = enDescription[row]
            }
        }
        
        if segue.identifier == "viewJoinedEventSegue"{
            if let secondViewController = segue.destinationViewController as? ViewJoinedEventsViewController{
                let row = sender as! Int
                secondViewController.name = ejNames[row]
                secondViewController.area = ejArea[row]
                secondViewController.photo = ejImages[row]
                secondViewController.address = ejAddress[row]
                secondViewController.descript = ejDescription[row]            }
            
        }
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
