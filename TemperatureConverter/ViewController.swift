//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Евгений Васильев on 11.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
    @IBOutlet weak var season: UIImageView!
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 50
            slider.minimumValue = -30
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let celciusTemperature = Int(round(slider.value))
        celciusLabel.text = "\(celciusTemperature)°C"
        
        let fahrenheitTemperature = Int(round(slider.value * 9 / 5)) + 32
        fahrenheitLabel.text = "\(fahrenheitTemperature)°F"
        
        
        if celciusTemperature <= 0 {
            season.image = UIImage(named: "winter")
        } else if celciusTemperature <= 10 {
            season.image = UIImage(named: "fall")
        } else if celciusTemperature <= 19 {
            season.image = UIImage(named: "spring")
        } else if celciusTemperature >= 20 {
            season.image = UIImage(named: "summer")
            
        }
    }
    
    


}
