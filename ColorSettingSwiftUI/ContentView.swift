//
//  ContentView.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfRed = Double.random(in: 0...255)
    @State private var numberOfGreen = Double.random(in: 0...255)
    @State private var numberOfBlue = Double.random(in: 0...255)
    
    private var backgroundColor = UIColor(red: 210/255, green: 216/255,
                                          blue: 255/255, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(backgroundColor)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                CustomView(color: Color(red: numberOfRed/255,
                                        green: numberOfGreen/255,
                                        blue: numberOfBlue/255))
                VStack {
                    SliderView(sliderValue: $numberOfRed,
                               color: .red)
                    SliderView(sliderValue: $numberOfGreen,
                               color: .green)
                    SliderView(sliderValue: $numberOfBlue,
                               color: .blue)
                }
                Spacer()
            }
            .padding()
        }
        .hideKeyboard()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
