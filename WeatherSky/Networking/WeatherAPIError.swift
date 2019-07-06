//
//  WeatherAPIError.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 23/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

enum WeatherAPIError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidURL
    case unknown(_ error: Error)
}
