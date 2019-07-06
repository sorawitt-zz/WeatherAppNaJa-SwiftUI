//
//  Date + Extension.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 23/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import Foundation

extension Date {
    func toString(dateFormat format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}

extension TimeInterval {
    func toDate() -> Date {
        Date(timeIntervalSince1970: self)
    }
}
