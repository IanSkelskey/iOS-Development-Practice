//
//  ViewController.swift
//  WorldTrotter
//
//  WorldTrotter is a unit conversion app.
//  Initially, it will only convert degrees
//      Fahrenheit (F) to degrees Celcius (C)
//
//  Created by Ian Skelskey on 12/26/21.
//

import UIKit

class ConversionViewController: UIViewController {
    
    let layer = CAGradientLayer()
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        
        layer.colors = [
            UIColor.init(red: 1, green: 1, blue: 1, alpha: 1).cgColor,
            UIColor.init(red: 245/255, green: 245/255, blue: 241/255, alpha: 1).cgColor
        ]
        self.view.layer.insertSublayer(layer, at: 0)
        layer.frame = self.view.bounds
    }

}

