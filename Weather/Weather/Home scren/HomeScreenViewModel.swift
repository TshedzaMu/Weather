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
    
    
    var currentTemp: String {
        return String(format:"%.0f", currentWeather.main?.temp! as! CVarArg)
    }
    
    var minTemp: String {
        return String(format:"%.0f", currentWeather.main?.temp_min as! CVarArg)
    }
    
    var maxTemp: String {
        return String(format:"%.0f", currentWeather.main?.temp_max as! CVarArg)
    }

    
    func fetchWeather(completed: @escaping () ->()) {
        DispatchQueue.main.async {
            self.service.getCurrentWeather { (response, error) in
                self.currentWeather = response ?? CurrentWeatherResponse()
                print(self.currentWeather)
                completed()
            }
            
        }
    }
    

}
