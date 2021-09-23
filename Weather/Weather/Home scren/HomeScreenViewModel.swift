//
//  HomeScreenViewModel.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/23.
//

import Foundation

class HomeScreenViewModel {
    
    var service = Service()
    var currentWeather = CurrentWeatherResponse()
    var forecastWeather = ForecastWeatherResponse()
    var dates = [String]()
    
    
    var currentTemp: String {
        guard let currentTemp = currentWeather.main?.temp else {
              return ""
          }
        return String(format:"%.0f", currentTemp)
    }
    
    var minTemp: String {
        guard let mainTemp = currentWeather.main?.temp_min else {
              return ""
          }
        return String(format:"%.0f", mainTemp)
    }
    
    var maxTemp: String {
        guard let maxTemp = currentWeather.main?.temp_max else {
              return ""
          }
        return String(format:"%.0f", maxTemp)
    }
    
    var listCount: Int {
        return forecastWeather.list?.count ?? Int()
    }
    
 
    
    var weatherArray: [Forecast] {
        return forecastWeather.list ?? []
    }
    
    var tempArray: [String] {
        var temps = [String]()
        for weather in weatherArray {
            guard let forecastTemp = weather.main?.temp else {
                  return []
              }
            let temp = String(format:"%.0f", forecastTemp)
            temps.append(temp)
        }
        return temps
    }
    
    func fetchWeather(completed: @escaping () ->()) {
        DispatchQueue.main.async {
            self.service.getCurrentWeather { (response, error) in
                self.currentWeather = response ?? CurrentWeatherResponse()
                completed()
            }
            self.service.getWeatherForecast { (response, error) in
                self.forecastWeather = response ?? ForecastWeatherResponse()
                print(self.forecastWeather)
                completed()
            }
        }
    }
    
    
}
