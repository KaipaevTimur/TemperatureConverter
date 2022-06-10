//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Admin on 10.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCenlius = Int(round(slider.value))
        cenliusLabel.text = "\(temperatureCenlius)ºC"
        
        let tetemperatureFahrenheit = Int(round(slider.value * 9 / 5 + 32))
        fahrenheitLabel.text = "\(tetemperatureFahrenheit)ºF"
        
    }
    
}


