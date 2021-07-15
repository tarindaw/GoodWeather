//
//  Constants.swift
//  GoodWeather
//
//  Created by Tarinda on 28/6/21.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=21195bebe28ce733d4561dfd215ce5e7&units=imperial")!
        }
    }
}
