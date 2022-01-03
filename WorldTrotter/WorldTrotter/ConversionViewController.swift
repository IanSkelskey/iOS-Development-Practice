//
//  ViewController.swift
//  WorldTrotter
//
//  WorldTrotter is a unit conversion app.
//  Initially, it will only convert degrees
//      Fahrenheit (F) to degrees Celcius (C)
//
//  Created by Ian Skelskey on 12/26/21
//  Last Updated: 01/02/2022
//

import UIKit

class ConversionViewController: UIViewController {
    
    var layer: CAGradientLayer!
    var vertStack: UIStackView!
    var fInput: UITextField!
    var cOutput: UILabel!
    var fahrenheitLabel: UILabel!
    var isReally: UILabel!
    var celsiusLabel: UILabel!
    var bgTouchResponder: UITapGestureRecognizer!
    var fahrenheitValue: Measurement<UnitTemperature>?
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        }else{
            return nil
        }
    }
    
    func subviews() {
        layer = CAGradientLayer()
        vertStack = UIStackView()
        fInput = UITextField()
        cOutput = UILabel()
        fahrenheitLabel = UILabel()
        isReally = UILabel()
        celsiusLabel = UILabel()
        bgTouchResponder = UITapGestureRecognizer()
        
        view.addGestureRecognizer(bgTouchResponder)
        
        bgTouchResponder.addTarget(self, action: #selector(bgTouched(_ :)))
        
        fInput.addTarget(self, action: #selector(inputTempChanged(_:)), for: .editingChanged)
        fInput.keyboardType = .decimalPad
        
        fInput.text = "212"
        
        
        fInput.font = UIFont.systemFont(ofSize: 70)
        fInput.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        fInput.adjustsFontSizeToFitWidth = false
        cOutput.text = "100"
        cOutput.font = UIFont.systemFont(ofSize: 70)
        cOutput.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        fahrenheitLabel.text = "degrees Fahrenheit"
        fahrenheitLabel.font = UIFont.systemFont(ofSize: 36)
        fahrenheitLabel.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        isReally.text = "is really"
        isReally.font = UIFont.systemFont(ofSize: 36)
        celsiusLabel.text = "degrees Celsius"
        celsiusLabel.font = UIFont.systemFont(ofSize: 36)
        celsiusLabel.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        
        vertStack.axis = .vertical
        vertStack.alignment = .center
        vertStack.distribution = .equalCentering
        vertStack.addArrangedSubview(fInput)
        vertStack.addArrangedSubview(fahrenheitLabel)
        vertStack.addArrangedSubview(isReally)
        vertStack.addArrangedSubview(cOutput)
        vertStack.addArrangedSubview(celsiusLabel)
        vertStack.translatesAutoresizingMaskIntoConstraints = false
        
        let stackTopConstraint = vertStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let stackLeadingConstraint = vertStack.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let stackTrailingConstraint = vertStack.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let stackBotConstraint = vertStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        
        view.addSubview(vertStack)
        
        stackTopConstraint.isActive = true
        stackLeadingConstraint.isActive = true
        stackTrailingConstraint.isActive = true
        stackBotConstraint.isActive = true
        
    }
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        
        subviews()
        layer.colors = [
            UIColor.init(red: 1, green: 1, blue: 1, alpha: 1).cgColor,
            UIColor.init(red: 245/255, green: 245/255, blue: 241/255, alpha: 1).cgColor
        ]
        self.view.layer.insertSublayer(layer, at: 0)
        layer.frame = self.view.bounds
        
        print("ConversionViewController loaded its view.")
    }
    
    override
    func viewDidLayoutSubviews() {
        layer.frame = self.view.bounds
    }
    
    override
    func viewWillAppear(_ animated:Bool) {
        let r = CGFloat(Int.random(in:150...255))/255
        let g = CGFloat(Int.random(in:150...255))/255
        let b = CGFloat(Int.random(in:150...255))/255
        let a:CGFloat = 1
        
        layer.colors?[1] = UIColor.init(red: r, green: g,blue: b, alpha: a).cgColor
    }
    
    @objc func inputTempChanged(_ inputField: UITextField){
        if let text = inputField.text, let value = Double(text){
            print("temp = \(value)")
            
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
            print("Fahrenheit Value = \(fahrenheitValue)")
            cOutput.text = "\(celsiusValue?.value ?? 0)"
        }else {
            cOutput.text = "???"
        }
        
    }
    
    @objc func bgTouched(_ gestureRecognizer: UITapGestureRecognizer){
        fInput.resignFirstResponder()
    }
    
    

}

