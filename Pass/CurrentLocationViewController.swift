//
//  CurrentLocationViewController.swift
//  Pass
//
//  Created by Niela Sultana on 7/17/16.
//  Copyright © 2016 Jesus Leal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Alamofire

class CurrentLocationViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    var xcoor: CLLocationDegrees?
    var ycoor: CLLocationDegrees?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
        /*let studentn = 1
        
        let parameters1 : [String: AnyObject] = [
            
            "user_id": "abc123",
            "student" : studentn,
            "location_x" : xcoor!,
            "location_y": ycoor!,
            "session_cookie" : "1223",
            "friend_top" : 0,
            "chats_top" : 0,
            ]
        
        Alamofire.request(.POST, "http://www.passbyus.org/updateLocation.php", parameters: parameters1 )
            .validate()
            .responseString{ response in
                print("Success: \(response.result.isSuccess)")
                print("Response String: \(response.result.value)")
                print(parameters1)
                //let JSON = response.result.value
                /* if let JSON = response.result.value {
                 print(JSON)
                 if (response.result.value is NSNull){}
                 else
                 { self.recieved = JSON as! [[String:AnyObject]]//[Dictionary<String,AnyObject>]}
                 }
                 }*/
                
        }
*/
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: Location Delegate Methods
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        let center = CLLocationCoordinate2D(latitude:location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004))
        self.mapView.setRegion(region, animated: true)
        self.xcoor = location?.coordinate.latitude
        self.ycoor = location?.coordinate.longitude
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Errors: " + error.localizedDescription)
    }
    
    @IBAction func notificationButton(sender: AnyObject) {
        
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Test Notification"
        notification.timeZone = NSTimeZone.defaultTimeZone()
        notification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(notification)

    }
    
}
