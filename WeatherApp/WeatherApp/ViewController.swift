//
//  ViewController.swift
//  WeatherApp
//
//  Created by studio on 13/10/16.
//  Copyright © 2016 studio. All rights reserved.
 //London

import UIKit
import Alamofire

class ViewController: UIViewController {

    var baseURL = "http://api.openweathermap.org/data/2.5/weather?q="
    var location = ""
    var getAPI = "&appid="
    var api = "7d63c29153c21972ac3c2603a9af20f5"
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var getweather: UIButton!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var temp: UILabel!
    
    var temperature = 0.0
    var weatherT = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getweather.isEnabled = false
        
        
        
        
    }

    @IBAction func getWeatherTapped(_ sender: AnyObject) {
        
        var runningURL = "\(baseURL)\(cityTextField.text!)\(getAPI)\(api)"
        
        Alamofire.request(runningURL).responseJSON { (response) in
            print(response)
            
            let result = response.result
            
            //Get Data and update labels
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let webTemp = main["temp"] as? Double {
                        self.temperature = webTemp - 273.15
                        print(self.temperature)
                        self.temp.text = "Temperature is \(self.temperature)°"
                    }
                }
            }
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let webWeather = dict["weather"]![0] as? Dictionary<String, AnyObject> {
                    if let webMain = webWeather["main"] as? String {
                        self.weatherT = webMain
                        print(self.weatherT)
                        self.weatherType.text = "Weather is: \(self.weatherT)"
                    }
                }
            }
            
            
        }
        
        
    }
   
    
    @IBAction func textFieldChanged(_ sender: AnyObject) {
        
        if (cityTextField.text?.characters.count)! > 0 {
            getweather.isEnabled = true
        }
        else {
            getweather.isEnabled = false
        }
        
    }
    

}

