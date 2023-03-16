//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Natalia Goyes on 8/03/23.
//

import Foundation

extension String {
    
    func escaped() -> String {
        self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
