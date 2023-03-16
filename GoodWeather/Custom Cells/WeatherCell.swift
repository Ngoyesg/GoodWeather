//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = vm.temperature.formatAsDegree()
    }
    
}
