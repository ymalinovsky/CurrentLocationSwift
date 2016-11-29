//
//  ViewController.swift
//  CurrentLocation
//
//  Created by Yan Malinovsky on 29.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    
    let locationMgr = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationMgr.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getLocation(_ sender: UIButton) {
        locationMgr.requestWhenInUseAuthorization()
        locationMgr.desiredAccuracy = kCLLocationAccuracyBest
        locationMgr.startUpdatingLocation()
    }

}

