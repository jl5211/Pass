//
//  ViewRequestViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class ViewRequestViewController: UIViewController {

    var photo:UIImage?
    var name:String?
    var school:String?
    var job:String?
    var bday:String?
    var city:String?
    
    
    
    @IBOutlet var fImage: UIImageView!
    
    @IBOutlet var fname: UILabel!
    
    @IBOutlet var fSchool: UILabel!
    
    @IBOutlet var fJob: UILabel!
    
    @IBOutlet var fBday: UILabel!
    
    @IBOutlet var fArea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("This is running")
        //print (name)
        //print (school)
        fImage.image = photo
        fname.text = name
        fSchool.text = school
        fJob.text = job
        fBday.text = bday
        fArea.text = city
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


