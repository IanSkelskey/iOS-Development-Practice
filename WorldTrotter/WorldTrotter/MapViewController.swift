//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Ian Skelskey on 12/26/21.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        
        // Set it as the view of this view controller
        view = mapView
        
        let poiLabel = UILabel()
        let poiSwitch = UISwitch()
        
        poiLabel.text = "Points of Interest"
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        poiLabel.translatesAutoresizingMaskIntoConstraints = false
        poiSwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        view.addSubview(poiLabel)
        view.addSubview(poiSwitch)
        
        let margins = view.layoutMarginsGuide
        
        let segTopConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let segLeadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let segTrailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        let labelTopConstraint = poiLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 16)
        let labelLeadingConstraint = poiLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        
        let switchCenterYConstraint = poiSwitch.centerYAnchor.constraint(equalTo: poiLabel.centerYAnchor)
        let switchLeadingConstraint = poiSwitch.leadingAnchor.constraint(equalTo: poiLabel.trailingAnchor, constant: 8)
        
        
        segTopConstraint.isActive = true
        segLeadingConstraint.isActive = true
        segTrailingConstraint.isActive = true
        
        labelTopConstraint.isActive = true
        labelLeadingConstraint.isActive = true
        
        switchCenterYConstraint.isActive = true
        switchLeadingConstraint.isActive = true
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        poiSwitch.addTarget(self, action: #selector(poiActive(_:)), for: .valueChanged)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("MapViewController loaded its view.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    @objc func poiActive(_ the_switch: UISwitch) {
        if the_switch.isOn {
            mapView.pointOfInterestFilter = .includingAll
        }else{
            mapView.pointOfInterestFilter = .excludingAll
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
