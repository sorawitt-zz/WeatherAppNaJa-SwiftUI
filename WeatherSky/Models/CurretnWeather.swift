//
//  Weather.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    
}

struct Wind: Codable {
    let speed: Double
}

struct Sun: Codable {
    let sunset: TimeInterval
    let sunrise: TimeInterval
}
