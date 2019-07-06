//
//  CurrentWeatherViewModel.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 23/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

struct CurrentWeatherViewModel {
    let title: String
    let subtitle: String
    let locationName: String
    let time: String
    let icon: String
    let temperature: String
    let humidity: String
    let windSpeed: String
    let sunrise: String
    let sunset: String
    
    init() {
        self.title = "n/a"
        self.subtitle = "n/a"
        self.locationName = "n/a"
        self.time = Date().toString(dateFormat: "MM/dd/yyyy")
        self.icon = "Clear"
        self.temperature = "n/a"
        self.humidity = "n/a"
        self.windSpeed = "n/a"
        self.sunrise = "n/a"
        self.sunset = "n/a"
    }
    
    init(weather: CurrentWeather) {
        self.title = weather.status[0].title
        self.subtitle = weather.status[0].subtitle
        self.locationName = weather.cityName
        self.time = Date().toString(dateFormat: "MM/dd/yyyy")
        self.icon = weather.status[0].title
        self.temperature = "\(weather.weather.temp)"
        self.humidity = "\(weather.weather.humidity)"
        self.windSpeed = "\(weather.wind.speed) m/s"
        self.sunset = weather.sun.sunset.toDate().toString(dateFormat: "HH:MM")
        self.sunrise = weather.sun.sunrise.toDate().toString(dateFormat: "HH:MM")
    }
}
