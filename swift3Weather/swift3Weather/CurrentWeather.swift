//
//  CurrentWeather.swift
//  swift3Weather
//
//  Created by Rosario Tarabocchia on 8/5/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class CurrentWeather {
    
    var _cityName : String!
    var _date : String!
    var _weatherType : String!
    var _currentTemp : Double!
    
    var cityName : String {
        if _cityName == nil {
            
            _cityName = ""
            
        }
        
        return _cityName
    }
    
    var date : String {
        
        if _date == nil {
            
            _date = ""
            
        }
        
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .long
        dateformatter.timeStyle = .none
        
        let currentDate = dateformatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        
        
        return _date
        
    }
    
    var weatherType : String {
        
        if _weatherType == nil {
            
            _weatherType = "Rain"
            
        }
        
        return _weatherType
    }
    
    var currentTemp : Double {
        
        if _currentTemp == nil {
            
            _currentTemp = 1.0
        }
        
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: DownloadComplete) {
        
        // Alamofire Download
        
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        
        Alamofire.request(.GET, currentWeatherURL).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let main = weather[0]["main"] as? String {
                        
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                    
                }
             
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let temp = main["temp"] as? Double {
                        
                        let kelvinToFarenheitPreDivision = (temp * (9/5) - 459.67)
                        
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        
                        self._currentTemp = kelvinToFarenheit
                        print(self._currentTemp)
                    }
                }
                
                print("2")
                
            }
            
            completed()
        }
        
        
    
        
    }

}
