//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation

class WeatherListViewModel {
    
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        weatherViewModels[index]
    }
    
    private func toCelsius() {
        
        weatherViewModels.map { vm in
            var weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature + 32) * 5/9
            return weatherModel
        }
        
    }
    
    private func toFahrenheit() {
        
        weatherViewModels.map { vm in
            var weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature * 9/5 ) + 32
            return weatherModel
        }
        
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
        case .celsius:
            toCelsius()
        case .fahrenheit:
            toFahrenheit()
        }
    }
    
}


class WeatherViewModel {
    
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.main.temp
    }
    
    var city: String {
        weather.name
    }
    
    var humidity: Double {
        weather.main.humidity
    }
}
