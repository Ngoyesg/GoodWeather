//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        String(format: "%.2f", self)
    }
    
}
