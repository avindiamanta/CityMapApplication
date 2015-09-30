//
//  MapViewController.swift
//  City Map
//
//  Created by Tiffany Diamanta on 9/30/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

import UIKit
import MapKit
import AddressBook

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView:MKMapView!
    
    var theCities:TheCities!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        // Convert address to coordinate and annotate it on map
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(theCities.location, completionHandler: { placemarks, error in
            if error != nil {
                print(error)
                return
            }
            
            
            if let placemark = placemarks?.first {
                
                // Add Annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.theCities.name
                annotation.subtitle = self.theCities.type
                annotation.coordinate = placemark.location!.coordinate
                
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
            }
            
            
        })
        
    }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        print("This just work fine")
        let identifier = "MyPin"
        // This not perfect! try another way
        /*let coords = CLLocationCoordinate2DMake(22.280100, 114.184814)
        
        let address = [String(kABPersonAddressStreetKey): self.restaurant.name]
        
        let place = MKPlacemark(coordinate: coords, addressDictionary: address)
        let mapItem = MKMapItem(placemark: place)
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        
        mapItem.openInMapsWithLaunchOptions(launchOptions)*/
        
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        // Reuse the annotation if possible
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
            annotationView!.rightCalloutAccessoryView = UIButton(type: .DetailDisclosure) as UIView // to show bunch of information
        }
        
        let leftIconView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(named: theCities.image)
        annotationView!.leftCalloutAccessoryView = leftIconView
        
        return annotationView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let coords = CLLocationCoordinate2DMake(22.280100, 114.184814)
        
        let address = [String(kABPersonAddressStreetKey): self.theCities.name]
        
        let place = MKPlacemark(coordinate: coords, addressDictionary: address)
        let mapItem = MKMapItem(placemark: place)
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        
        mapItem.openInMapsWithLaunchOptions(launchOptions)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
