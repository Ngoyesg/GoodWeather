//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
    let name: String
}




struct Weather: Codable {
    let temp: Double
    let humidity: Double
    
}
