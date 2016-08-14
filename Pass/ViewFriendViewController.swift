//
//  ViewFriendViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit

class ViewFriendViewController: UIViewController {
    
    var name: String?
    var addr: String?
    var image: UIImage?
    

    @IBOutlet weak var fImage: UIImageView!
    
    @IBOutlet weak var fName: UILabel!
    
    @IBOutlet weak var fHsAttended: UILabel!
    
    @IBOutlet weak var fCollgeAttended: UILabel!
    
    @IBOutlet weak var fCurrentJob: UILabel!
    
    @IBOutlet weak var fBday: UILabel!
    
    @IBOutlet weak var fAddr: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fImage.image = image
        fName.text = name
        fAddr.text = addr
        
        

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
