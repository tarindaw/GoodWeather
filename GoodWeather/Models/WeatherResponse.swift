//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Tarinda on 28/6/21.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
