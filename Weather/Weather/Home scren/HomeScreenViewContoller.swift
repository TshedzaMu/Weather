//
//  HomeScreenViewContoller.swift
//  Weather
//
//  Created by Tshedza Musandiwa on 2021/09/17.
//

import Foundation
import UIKit

class HomeScreeViewContoller: UIViewController {
    
    
    @IBOutlet private var mainCurrentLabel: UILabel!
    @IBOutlet private var mainDescriptionLabel: UILabel!
    @IBOutlet private var wetherTableView: UITableView!
    @IBOutlet private var minimumTempLabel: UILabel!
    @IBOutlet private var currentTempLabel: UILabel!
    @IBOutlet private var maximimTempLabel: UILabel!
    var names = ["Monday", "Tuesday", "Wed", "Thursday", "Friday"]
    var temp = ["10", "15", "40", "50", "100"]
    var icon = ["clearIcon", "partlySunnyIcon", "clearIcon", "clearIcon", "rainIcon"]
    
    private lazy var viewModel = HomeScreenViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wetherTableView.delegate = self
        wetherTableView.dataSource = self
        setupUI()
    }
    
    private func setupUI() {
        viewModel.fetchWeather {
            self.mainCurrentLabel.text = String("\((self.viewModel.currentWeather.main?.temp)!)\("℃")")
            self.currentTempLabel.text = String("\((self.viewModel.currentWeather.main?.temp)!)\("℃")")
            self.mainDescriptionLabel.text = self.viewModel.currentWeather.weather?.first?.description
            self.minimumTempLabel.text = String("\((self.viewModel.currentWeather.main?.temp_min)!)\("℃")")
            self.maximimTempLabel.text = String("\((self.viewModel.currentWeather.main?.temp_max)!)\("℃")")
       }
    }
}

extension HomeScreeViewContoller: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WEATHER_CELL", for: indexPath) as! WeatherTableViewCell
        cell.setWeatherForecast(weekday: names[indexPath.row],
                                imageIcon: icon[indexPath.row],
                                temparature: temp[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(70)
    }
}
