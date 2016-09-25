//
//  FriendsMainViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class FriendsMainViewController:


    UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var friendsTableView: UITableView!
    
    @IBAction func hideAll(sender: AnyObject) {
        let parameters1 : [String: AnyObject] = [
            
            "transaction_cookie": "abc123",
            "user_id" : "jl5211@nyu.edu",
            "friend_id" : "",
            "hidden": "Jesus",
            ]
        
        Alamofire.request(.POST, "https://www.passbyus.org/changeHidden.php", parameters: parameters1 )
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                //print("Response String: \(response.result.value)")
                //print(parameters1)
                //self.transaction_cookie = response.result.value
                
        }

    }
    var friends:[FriendClass]?
    var friend:FriendClass?
    
    var names = ["Elon Xie", "Shiny Croospulle", "Jesus Leal"]
    
    var areas = ["Brooklyn, NY", "Staten Island, NY", "Queens, NY"]
    
    var images = [UIImage(named: "Elon"), UIImage(named: "Shiny"), UIImage(named: "Jesus")]
    let studentn:Int = 1
    var transaction_cookie: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let parameters1 : [String: AnyObject] = [
            
            "password": "abc123",
            "email" : "jl5211@nyu.edu",
            "student" : studentn,
            "f_name": "Jesus",
            "l_name" : "Leal",
        ]
        
        Alamofire.request(.POST, "https://www.passbyus.org/registration.php", parameters: parameters1 )
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                //print("Response String: \(response.result.value)")
                //print(parameters1)
                //self.transaction_cookie = response.result.value
                
        }
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(transaction_cookie, forKey: "tCookie")
        print (transaction_cookie)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomCell
        cell.profilePic.image = images[indexPath.row]
        cell.nameOfFriend.text = names[indexPath.row]
        cell.location.text = areas[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        let row: Int = indexPath.row
        self.performSegueWithIdentifier("viewFriendDetails", sender: row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewFriendDetails" {
            if let secondViewController = segue.destinationViewController as? ViewFriendViewController{
                let row = sender as! Int
                secondViewController.name = names[row]
                secondViewController.addr = areas[row]
                secondViewController.image = images[row]
            }
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
