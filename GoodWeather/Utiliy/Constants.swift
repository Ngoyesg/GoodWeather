//
//  Constants.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation


struct Constants {
    
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped()),uk&APPID=05481bd4779d8b47c269095df0d21432&&units=\(unit)")!
        }
        
    }
    
}
