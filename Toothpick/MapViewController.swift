//
//  GMaps.swift
//  Toothpick
//
//  Created by ananya mukerjee on 9/19/18.
//  Copyright © 2018 Cheney. All rights reserved.
//


import UIKit
import GoogleMaps

class MapViewController: UIViewController  {
        //var currentLocation: CLLocation?
        //var zoomLevel: Float = 15.0
    @IBOutlet weak var mapView: GMSMapView!
    
    var locationManager = CLLocationManager()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        print("here")
    }
    }



    
    // Delegates to handle events for the location manager.
    extension MapViewController: CLLocationManagerDelegate {
        // 2
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            // 3
            guard status == .authorizedWhenInUse else {
                return
            }
            // 4
            locationManager.startUpdatingLocation()
            print("case1")
            
            //5
            mapView?.isMyLocationEnabled = true
            mapView?.settings.myLocationButton = true
        }
        
        // 6
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            print("case2")
            guard let location = locations.first else {
                return
            }
            
            // 7
            print(mapView)
            mapView?.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
            
            // 8
            print("case3")
            locationManager.stopUpdatingLocation()
        }
       
}
