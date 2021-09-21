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
    
    @IBOutlet private var wetherTableView: UITableView!
    @IBOutlet private var minimumTempLabel: UILabel!
    @IBOutlet private var currentTempLabel: UILabel!
    @IBOutlet private var maximimTempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://api.openweathermap.org/data/2.5/forecast?q=Johannesburg&appid=578feca10a590e86711974e85a838e7b&units=metric")
            .responseJSON { (response) in
                if let JSON = response.result.value {
                    // print(response)
                    print("JSON","\(JSON)")
                }
            }
    }
}

extension HomeScreeViewContoller: UITableViewDelegate, UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    

}
