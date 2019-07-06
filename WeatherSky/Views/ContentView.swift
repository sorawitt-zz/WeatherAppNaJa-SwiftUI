//
//  ContentView.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 17/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var weatherUsecase = WeatherUsecase(byCity: "phitsanulok")
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                CurrentWeatherView(viewModel: weatherUsecase.currentWeather)
            }
        }
    } 
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
#endif
