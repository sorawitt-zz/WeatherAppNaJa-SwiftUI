//
//  CurrentWeatherView.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 19/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import SwiftUI

struct CurrentWeatherView: View {
    let viewModel: CurrentWeatherViewModel
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(viewModel.locationName)
                        .font(.largeTitle)
                        .bold()
                    Text(viewModel.time)
                    }.padding(.top, 40)
                Image(viewModel.icon).padding(.all, 40)
                VStack {
                    Text(viewModel.title).bold()
                    Text(viewModel.subtitle).font(.callout).color(.gray)
                }
            }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading) {
                        Text("Temp").font(.caption)
                        Text("\(viewModel.temperature)\u{00B0}").bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    VStack(alignment: .leading) {
                        Text("Sunrise").font(.caption)
                        Text(viewModel.sunrise).bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    
                }
                Spacer()
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading) {
                        Text("Wind").font(.caption)
                        Text(viewModel.windSpeed).bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    
                    VStack(alignment: .leading) {
                        Text("Sunset").font(.caption)
                        Text(viewModel.sunset).bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    
                    
                }
                }.padding(.top, 40)
                .padding([.leading, .trailing], 100)
            }.colorScheme(.dark)
    }
}

#if DEBUG
struct Current_Previews : PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(viewModel: CurrentWeatherViewModel()).colorScheme(.dark)
    }
}
#endif
