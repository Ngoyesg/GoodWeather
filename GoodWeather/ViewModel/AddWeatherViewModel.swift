//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation

class AddWeatherViewModel {
    
    func addCity(for city: String, completionHandler: @escaping (WeatherViewModel)-> Void){
        
        let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
        
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        WebService().load(resource: weatherResource) { result in
            
            if let result = result {
                
                let viewModel = WeatherViewModel(weather: result)
                completionHandler(viewModel)
                //
                
            }
            
        }
        
    }
    
}
