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
