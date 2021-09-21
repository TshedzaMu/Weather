//
//  WeatherResponse.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/18.
//

import Foundation

struct WeatherResponse: Codable {
    var date: String?
    
    enum CodingKeys: String, CodingKey {
        case date = "dt_txt"
    }
}


struct WeatherData {
    
}



//{
//     "dt":1631988000,
//     "main":{
//        "temp":18.26,
//        "feels_like":17.29,
//        "temp_min":17.65,
//        "temp_max":18.26,
//        "pressure":1018,
//        "sea_level":1018,
//        "grnd_level":833,
//        "humidity":44,
//        "temp_kf":0.61
//     },
//     "weather":[
//        {
//           "id":800,
//           "main":"Clear",
//           "description":"clear sky",
//           "icon":"01n"
//        }
//     ],
//     "clouds":{
//        "all":0
//     },
//     "wind":{
//        "speed":3.61,
//        "deg":358,
//        "gust":5.99
//     },
//     "visibility":10000,
//     "pop":0,
//     "sys":{
//        "pod":"n"
//     },
//     "dt_txt":"2021-09-18 18:00:00"
//  }
