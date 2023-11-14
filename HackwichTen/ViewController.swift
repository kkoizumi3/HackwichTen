//
//  ViewController.swift
//  HackwichTen
//
//  Created by Kaci Koizumi on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.36188, longitude: -158.055725)
    
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Resturant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        //problem set
        let restaurantTwo = Resturant(title: "Takumi Sushi and Bar", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.33074161001403, longitude: -158.075428434462))
        
        mapView.addAnnotation(restaurantTwo)
       
    } 
    
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
               mapView.setRegion(coordinateRegion, animated: true)

           }
    
    
}

