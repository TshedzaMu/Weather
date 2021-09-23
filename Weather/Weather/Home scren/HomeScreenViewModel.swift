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
        return String(format:"%.0f", currentWeather.main?.temp! as! CVarArg)
    }
    
    var minTemp: String {
        return String(format:"%.0f", currentWeather.main?.temp_min as! CVarArg)
    }
    
    var maxTemp: String {
        return String(format:"%.0f", currentWeather.main?.temp_max as! CVarArg)
    }
    
    var listCount: Int {
        return forecastWeather.list?.count ?? Int()
    }
    

    
    var weatherArray: [Forecast] {
        return forecastWeather.list ?? []
    }
    
    var dateArray: [String] {
        for weather in weatherArray {
            let date = weather.dt_txt ?? ""
            dates.append(date)
        }
        return dates
    }
    
//    var getWeekDatesFromDate: [String] {
//        var weekDays = [String]()
//        for date in dateArray {
//         / let weekday = Calendar.current.component(.weekday, from: date)
//           // weekdays.a
//        }
//
//        return weekDays
//    }
    
    
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
