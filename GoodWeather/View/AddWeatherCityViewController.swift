//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegate?
    
    @IBOutlet weak var cityTextField: UITextField!
            
    @IBAction func onCreateCityTapped(_ sender: Any) {
        
        if let city = cityTextField.text {
            addWeatherVM.addCity(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
    @IBAction func onDoneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
