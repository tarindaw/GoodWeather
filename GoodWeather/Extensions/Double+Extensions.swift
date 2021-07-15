//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Tarinda on 28/6/21.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
