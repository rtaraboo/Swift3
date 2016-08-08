//
//  Constants.swift
//  swift3Weather
//
//  Created by Rosario Tarabocchia on 8/5/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "a570e8e6fe4bd3e4877ab3f94691c7f2"

typealias DownloadComplete = () -> ()


let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(APP_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=a570e8e6fe4bd3e4877ab3f94691c7f2"

