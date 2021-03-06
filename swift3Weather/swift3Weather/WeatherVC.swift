//
//  WeatherVC.swift
//  swift3Weather
//
//  Created by Rosario Tarabocchia on 8/5/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit
import Alamofire
import CoreLocation

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var currentWeatherImg: UIImageView!
    @IBOutlet weak var currentWeatherLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let locationManager = CLLocationManager()
    var currentLocation : CLLocation!
    
    var currentWeather : CurrentWeather!
    var forcast : Forecast!
    var forecasts = [Forecast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        print("1")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        locationAuthStatus()
        
        
        
    }
    
    func locationAuthStatus (){
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            
            currentLocation = locationManager.location
            
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            
            currentWeather.downloadWeatherDetails {
                self.downloadForecastData {
                    self.updateMainUI()
                }
                
            }
            
            print(currentLocation.coordinate.longitude)
            
        } else {
            
            locationManager.requestWhenInUseAuthorization()
            locationAuthStatus()
            
        }
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell {
            
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        }
        
        else {
            
            return WeatherCell()
            
        }
        
        
    }
    
    func updateMainUI(){
        
        dateLbl.text = currentWeather.date
        print(currentWeather.date)
        print(dateLbl.text)
        currentTempLbl.text = "\(currentWeather.currentTemp)℉"
        print("\(currentWeather.currentTemp)")
        print(currentTempLbl.text)
        
        currentWeatherLbl.text = currentWeather.weatherType
        locationLbl.text = currentWeather.cityName
        print("THIS IS THE CURRENT WEATHER \(currentWeather.cityName)")
        currentWeatherImg.image = UIImage(named: currentWeather.weatherType)
        
        print("4")
        
    }
    
    func downloadForecastData(completed: DownloadComplete){
        
        
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(.GET, forecastURL).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    
                    for obj in list {
                    
                    let forecast = Forecast(weatherDict: obj)
                        
                    self.forecasts.append(forecast)
                    print(obj)
                    
                                            
                    }
                    
                    self.forecasts.remove(at: 0)
                    
                    
                }
                
                self.tableView.reloadData()
                
            }
            
           completed()
            
        }
        

}

}
