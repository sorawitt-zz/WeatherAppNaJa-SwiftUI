//
//  Weather.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    let cityName: String
    let wind: Wind
    let weather: Weather
    let status: [Sky]
    let sun: Sun
    
    enum CodingKeys: String, CodingKey {
        case cityName = "name"
        case wind
        case weather = "main"
        case status = "weather"
        case sun = "sys"
    }
}

struct Weather: Codable {
    let temp: Double
    let humidity: Double
}

struct Sky: Codable {
    let title: String
    let subtitle: String
    
    enum CodingKeys: String, CodingKey {
        case title = "main"
        case subtitle = "description"
    }
}
struct Wind: Codable {
    let speed: Double
}

struct Sun: Codable {
    let sunset: TimeInterval
    let sunrise: TimeInterval
}
