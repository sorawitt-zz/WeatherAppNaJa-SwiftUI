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
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .background(
                    LinearGradient(gradient:
                        Gradient(colors: [.white, .black]),
                                   startPoint: .top,
                                   endPoint: .bottom),
                    cornerRadius: 0)
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
