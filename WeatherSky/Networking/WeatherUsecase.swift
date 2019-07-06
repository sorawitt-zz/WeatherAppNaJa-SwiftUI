//
//  WeatherUsecase.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 23/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import SwiftUI
import Combine

class WeatherUsecase: BindableObject {
    var didChange = PassthroughSubject<WeatherUsecase, Never>()
    var currentWeather = CurrentWeatherViewModel() {
        didSet {
            didChange.send(self)
        }
    }
    init(byCity city: String, webService: WeatherAPI = WeatherAPI()) {
        webService.getWeather(by: city) { result in
            switch result {
            case .success(let weather):
                self.currentWeather = CurrentWeatherViewModel(weather: weather)
            case .failure(let error):
                print("\(error.localizedDescription)")
                break
            }
        }
    }
}

