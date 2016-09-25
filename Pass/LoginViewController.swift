//
//  LoginViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit
import Alamofire
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let studentn = 1
        /*
        let parameters1 : [String: AnyObject] = [
            
            "password": "abc123",
            "email" : "jl5211@nyu.edu",
            "student" : studentn,
            "f_name": "Jesus",
            "l_name" : "Leal",
            ]
        
        Alamofire.request(.POST, "http://www.passbyus.org/registration.php", parameters: parameters1/*, encoding: .JSON*/)
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                print("Response String: \(response.result.value)")
                print(parameters1)
        }
        
        let parameters2 : [String: AnyObject] = [
            
            "code": "abc123",
            "transaction_cookie" : "jl5211@nyu.edu",
            ]
        
        Alamofire.request(.POST, "http://www.passbyus.org/registrationConfirmation.php", parameters: parameters2, encoding: .JSON)
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                print("Response String: \(response.result.value)")
                print(parameters1)
        }
        
        let parameters3 : [String: AnyObject] = [
            
            "password": "abc123",
            "email" : "jl5211@nyu.edu",
            ]
        
        Alamofire.request(.POST, "http://www.passbyus.org/login.php", parameters: parameters3, encoding: .JSON)
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                print("Response String: \(response.result.value)")
                print(parameters1)
        }
        
        let parameters4 : [String: AnyObject] = [
            
            "session_cookie": "abc123",
            "user_id" : "jl5211@nyu.edu"
            ]
        
        Alamofire.request(.POST, "http://www.passbyus.org/requestTransaction.php", parameters: parameters1, encoding: .JSON)
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                print("Response String: \(response.result.value)")
                print(parameters1)
        }

*/



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
