//
//  WeatherCell.swift
//  swift3Weather
//
//  Created by Rosario Tarabocchia on 8/5/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var lowTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!

    func configureCell(forecast: Forecast) {
        
        lowTemp.text = "Low: \(forecast.lowTemp)℉"
        highTemp.text = "High: \(forecast.highTemp)℉"
        weatherType.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
        
    }



}
