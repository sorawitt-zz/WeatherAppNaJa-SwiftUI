//
//  WeatherAPIClient.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

import Foundation

class WeatherAPI {
    fileprivate let openWeatherAPIKey = "6e3528041b8adf7517d0681ebae6d576"

    lazy var baseUrl: URL = {
        return URL(string: "http://api.openweathermap.org/data/2.5/")!
    }()

    let decoder = JSONDecoder()
    let session: URLSession

    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }

    convenience init() {
        self.init(configuration: .default)
    }

    typealias WeatherCompletionHandler = (Result<CurrentWeather, WeatherAPIError>) -> Void

    func getWeather(by city: String, completionHandler completion: @escaping WeatherCompletionHandler) {
        
        guard let weatherRequestURL = URL(string: "\(baseUrl)?APPID=\(openWeatherAPIKey)&q=\(city)&units=metric") else{
            completion(.failure(.invalidURL))
            return
        }
        
        let task = session.dataTask(with: weatherRequestURL) { (data, response, error) in
            if let data = data {
                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(.requestFailed))
                    return
                }
                
                if httpResponse.statusCode == 200 {
                    do {
                        let weahter = try self.decoder.decode(CurrentWeather.self, from: data)
                        completion(.success(weahter))
                    }
                    catch {
                        completion(.failure(.jsonParsingFailure))
                    }
                }
                else {
                    completion(.failure(.invalidData))
                }
            }
            else if let error = error {
                completion(.failure(.unknown(error)))
            }
        }
        
        task.resume()
    }
}
