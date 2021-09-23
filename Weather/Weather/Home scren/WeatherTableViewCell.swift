//
//  WeatherTableViewCell.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/21.
//

import Foundation
import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    @IBOutlet var weekDayTextLabel: UILabel!
    @IBOutlet private var weatherImageicon: UIImageView!
    @IBOutlet private var temparatureTextLabel: UILabel!
    
    func setWeatherForecast(weekday: String,
                     imageIcon: String,
                     temparature: String) {
        weekDayTextLabel.text = weekday
        weatherImageicon.image = UIImage(named: imageIcon)
        temparatureTextLabel.text = "\(temparature)\("℃")"
    }
}
