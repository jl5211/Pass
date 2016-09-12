//
//  ViewJoinedEventsViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class ViewJoinedEventsViewController: UIViewController {
    
    
    var photo:UIImage?
    var name:String?
    var descript:String?
    var address:String?
    var area:String?
    
    
    @IBOutlet var eImage: UIImageView!
    
    @IBOutlet var eName: UILabel!
    
    @IBOutlet var eDescription: UITextView!
    
    @IBOutlet var eAddress: UILabel!
    
    @IBOutlet var areaInfo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eImage.image = photo
        eName.text = name
        eDescription.text = descript
        eAddress.text = address
        areaInfo.text = area
        
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
