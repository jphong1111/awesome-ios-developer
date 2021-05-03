//
//  LocationManager.swift
//  DispatchDemoApp
//
//  Created by JungpyoHong on 5/1/21.
//

import UIKit
import CoreLocation

class LocationManager: NSObject {
    
    var locationManager = CLLocationManager() {
        didSet {
            locationManager.delegate = self
        }
    }
    
    private weak var controller: UIViewController?
    var locationList: [CLLocation] = []
    
    init(presentingController controller: UIViewController) {
        self.controller = controller
        super.init()
    }
    
    func requestAuthorization() {
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }
    
    func checkAuthorizationStatus() {
        let status = CLLocationManager.authorizationStatus()
        
        switch status {
        case .denied, .restricted, .notDetermined:
            // show alert
        break
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            
        @unknown default:
            break
        }
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.stopUpdatingLocation()
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            locationList.append(CLLocation(latitude: lat, longitude: lon))
        }
    }
}

