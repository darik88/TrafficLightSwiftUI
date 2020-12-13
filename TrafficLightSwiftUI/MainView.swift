//
//  MainView.swift
//  TrafficLightSwiftUI
//
//  Created by Айдар Рахматуллин on 10.12.2020.
//

import SwiftUI

struct MainView: View {
    
    enum TrafficLight {
        case red, yellow, green
    }
    
    @State var currentLight = TrafficLight.red
    @State var text = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    var body: some View {
        
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack(spacing: 30) {
                ColoredCircleView(color: .systemRed, opacity: redLightState)
                ColoredCircleView(color: .systemYellow, opacity: yellowLightState)
                ColoredCircleView(color: .systemGreen, opacity: greenLightState)
                
                Spacer()
                
                ButtonView(title: text, action: buttonTapped)
                
            }.padding(40)
        }
    }
    
    private func buttonTapped(){
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        text = "NEXT"
        switch currentLight {
        case .red:
            greenLightState = lightIsOff
            redLightState = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightState = lightIsOff
            yellowLightState = lightIsOn
            currentLight = .green
        case .green:
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
