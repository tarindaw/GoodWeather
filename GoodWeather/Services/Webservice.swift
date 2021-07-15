//
//  Webservice.swift
//  GoodWeather
//
//  Created by Tarinda on 28/6/21.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class Webservice {    
    func load<T>(resourse: Resource<T>, completion: @escaping (T?) -> () ) {
        URLSession.shared.dataTask(with: resourse.url) { data, response, error in
            // print(data)            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resourse.parse(data))
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
