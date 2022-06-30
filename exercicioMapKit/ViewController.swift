//
//  ViewController.swift
//  exercicioMapKit
//
//  Created by Fernanda Perovano on 29/06/22.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var pessoa: Local?
    private let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTapMap()
        setUpCoreLocation()
    }
    
    @IBAction func sortearLocal() {
        let sorteio = Int.random(in: 1...Local.places.count)
        let sorteado = Local.places[sorteio]
        mapView.addAnnotation(sorteado)
        mapView.camera.altitude *= 2.0;
    }
    
    func setTapMap() {
        mapView.showsUserLocation = true
        mapView.showsTraffic = true
        mapView.addAnnotations(Local.places)
        mapView.delegate = self
    }
    
    func setUpCoreLocation() {
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
    }
}

extension ViewController: CLLocationManagerDelegate {
    
}

extension ViewController: MKMapViewDelegate {
    
}
