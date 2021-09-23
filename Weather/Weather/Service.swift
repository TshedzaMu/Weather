//
//  HomeScreenViewModel.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/17.
//

import Foundation
import Alamofire

class Service {
    
    typealias currentSucess = (CurrentWeatherResponse?, _ error: String?) ->()

    func getCurrentWeather(completed: @escaping currentSucess) {
        AF.request("https://api.openweathermap.org/data/2.5/weather?q=Johannesburg&appid=578feca10a590e86711974e85a838e7b&units=metric")
            .responseJSON { response in
               // print(response)
                    guard response.error == nil else {
                        print(response.error!)
                        completed(nil, (response.error?.errorDescription)!)
                        return
                    }
                    guard let data = response.data else {
                        print("No Data")
                        return
                    }
                    do {
                        let decoder = JSONDecoder()
                        let currentWeather = try decoder.decode(CurrentWeatherResponse.self, from: data)
                        completed(currentWeather, nil)
                    } catch {
                        print(error)
                    }
                }
    }
    
    func getWeatherForecast(completed: @escaping () ->()) {
        AF.request("https://api.openweathermap.org/data/2.5/forecast?q=Johannesburg&appid=578feca10a590e86711974e85a838e7b&units=metric")
            .responseJSON { response in
              //  print(response)
                    guard response.error == nil else {
                        print(response.error!)
                        return
                    }
                    guard let data = response.data else {
                        print("No Data")
                        return
                    }
                    do {
                        let decoder = JSONDecoder()
                        let info = try decoder.decode(CurrentWeatherResponse.self, from: data)
                        print(info)
                       
                    } catch {
                        print(error)
                    }
                }
        
    }
    
}
