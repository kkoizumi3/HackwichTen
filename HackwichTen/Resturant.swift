//
//  Resturant.swift
//  HackwichTen
//
//  Created by Kaci Koizumi on 11/9/23.
//

import UIKit
import MapKit

class Resturant: NSObject, MKAnnotation {

    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
             {
                 self.restaurantTitle = title
                 self.restaurantType = type
                 self.coordinate = coordinate
                 
                 super.init()
                 
             }
    
    var subtitle: String?
        {
            //Problem Set #3 Code Switch
            return restaurantType
        }
}
