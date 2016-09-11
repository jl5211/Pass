//
//  AddFriendViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var fRequestsTableView: UITableView!
    
    var names = ["Cassie Leal", "Mayra Caceres"]
    var locations = ["Brooklyn", "Queens"]
    var images = [UIImage(named: "Cassie"), UIImage(named: "Mayra")]
    
    
    
    //dummy variables
    var schools = ["Unleashed", "NYU Tandon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FriendRequestsCustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.name.text = names[indexPath.row]
        cell.location.text = locations[indexPath.row]
        
        return cell;
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        let row: Int = indexPath.row
        self.performSegueWithIdentifier("viewRequest", sender: row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewRequest" {
            if let secondViewController = segue.destinationViewController as? ViewRequestViewController{
                let row = sender as! Int
                secondViewController.name = names[row]
                secondViewController.city = locations[row]
                secondViewController.photo = images[row]
                secondViewController.school = schools[row]
            }
        }
    }
    
    
    /*
     @IBOutlet var fname: UILabel!
     
     @IBOutlet var fSchool: UILabel!
     
     @IBOutlet var fJob: UILabel!
     
     @IBOutlet var fBday: UILabel!
     
     @IBOutlet var fCity: UILabel!
 
 */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
