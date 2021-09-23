//
//  WeatherResponse.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/18.
//

import Foundation

struct CurrentWeatherResponse: Decodable {
    var main: MainData?
    var weather: [WeatherData]?
}

struct WeatherData: Decodable {
    var description: String?
}

struct MainData: Decodable {
    var temp_max: Double?
    var temp: Double?
    var feels_like: Double?
    var temp_min: Double?
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





//{
//   "coord":{
//      "lon":28.0436,
//      "lat":-26.2023
//   },
//   "weather":[
//      {
//         "id":800,
//         "main":"Clear",
//         "description":"clear sky",
//         "icon":"01d"
//      }
//   ],
//   "base":"stations",
//   "main":{
//      "temp":297.81,
//      "feels_like":296.83,
//      "temp_min":290.61,
//      "temp_max":299.16,
//      "pressure":1013,
//      "humidity":19
//   },
//   "visibility":10000,
//   "wind":{
//      "speed":0.28,
//      "deg":32,
//      "gust":1.05
//   },
//   "clouds":{
//      "all":0
//   },
//   "dt":1632236893,
//   "sys":{
//      "type":2,
//      "id":2005686,
//      "country":"ZA",
//      "sunrise":1632196713,
//      "sunset":1632240201
//   },
//   "timezone":7200,
//   "id":993800,
//   "name":"Johannesburg",
//   "cod":200
//}
