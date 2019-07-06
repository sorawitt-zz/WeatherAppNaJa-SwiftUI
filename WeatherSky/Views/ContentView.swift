//
//  ContentView.swift
//  WeatherSky
//
//  Created by sorawit trutsat on 17/6/2562 BE.
//  Copyright © 2562 sorawit trutsat. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            HStack() {
                Spacer()
                Text("Phitsanulok, ")
                    .color(.white)
                    .bold()
                Text("Thailand")
                    .color(.gray)
                }
                .padding([.top, .bottom, .trailing], 12)
            VStack {
                Text("05.43")
                    .font(.largeTitle)
                    .bold()
                Text("May 25th 2016")
                }.padding(.top, 40)
            Image("sunny").padding(.all, 40)
            VStack {
                Text("Sun rise at 6.05 am").bold()
                Text("subtitle").font(.callout).color(.gray)
            }
            VStack(spacing: 20) {
                HStack(spacing: 80) {
                    VStack(alignment: .leading) {
                        Text("Sunrise").font(.caption)
                        Text("6.03").bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    
                    VStack(alignment: .leading) {
                        Text("Wind").font(.caption)
                        Text("4 m/s SW").bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                }
                HStack(spacing: 80) {
                    VStack(alignment: .leading) {
                        Text("Sunset").font(.caption)
                        Text("20.16").bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                    
                    VStack(alignment: .leading) {
                        Text("Temperature").font(.caption)
                        Text("8*").bold().font(.subheadline)
                        }
                        .padding(.top, 10)
                }
                }.padding(.top, 40)
            Spacer()
            
            }
            .background(Color.init(red: 18/255, green: 17/255, blue: 17/255).edgesIgnoringSafeArea(.all))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
#endif
