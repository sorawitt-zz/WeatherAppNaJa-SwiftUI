//
//  CurrentWeather.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    let time: Double
    let summary: String
    let icon: String
    let precipProbability: Double
    let temperature: Double
    let apparentTemperature: Double
    let humidity: Double
    let windSpeed: Double
    
    init() {
        self.time = 0
        self.summary = "Data Unavailable"
        self.icon = "default"
        self.precipProbability = 0
        self.temperature = 0
        self.apparentTemperature = 0
        self.humidity = 0
        self.windSpeed = 0
    }
}

