//
//  BackgroundView.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        let background = Rectangle()
            .fill(Color.init(red: 38/255, green: 38/255, blue: 38/255))
            .edgesIgnoringSafeArea(.all)
        return background
    }
}
