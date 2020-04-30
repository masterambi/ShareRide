//
//  DriverAnnotation.swift
//  ShareRide
//
//  Created by Ramzy Rashaun Arief on 30/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import MapKit

class DriverAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var uid: String
    
    
    init(uid: String, coordinate: CLLocationCoordinate2D) {
        self.uid = uid
        self.coordinate = coordinate
    }
    
}
