//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Tarinda on 28/6/21.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
