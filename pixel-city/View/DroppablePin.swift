//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Mark Phillips on 11/14/17.
//  Copyright © 2017 Team Nerd. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
