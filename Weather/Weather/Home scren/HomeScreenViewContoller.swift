//
//  HomeScreenViewContoller.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/17.
//

import Foundation
import UIKit
import Alamofire

class HomeScreeViewContoller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://api.openweathermap.org/data/2.5/weather?lat=-26&lon=28&appid=578feca10a590e86711974e85a838e7b")
            .responseJSON { (response) in
                if let JSON = response.result.value {
                    print(response)
                   // print("JSON","\(JSON)")
                }
            }
    }
}
