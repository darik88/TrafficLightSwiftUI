//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Айдар Рахматуллин on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    enum TrafficLight {
        case red, yellow, green
    }
    
    @State var currentLight = TrafficLight.red
    @State var text = "START"
    
    @State var redCircle = ColoredCircle(color: .systemRed)
    @State var yellowCircle = ColoredCircle(color: .systemYellow)
    @State var greenCircle = ColoredCircle(color: .systemGreen)
    
    var body: some View {
        
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack(spacing: 30) {
                redCircle
                yellowCircle
                greenCircle
                
                Spacer()
                
                ButtonView(text: text, function: buttonTapped)
                
            }.padding(40)
        }
    }
    
    private func buttonTapped(){
        text = "NEXT"
        switch currentLight {
        case .red:
            greenCircle.opacity = 0.3
            redCircle.opacity = 1
            currentLight = .yellow
        case .yellow:
            redCircle.opacity = 0.3
            yellowCircle.opacity = 1
            currentLight = .green
        case .green:
            yellowCircle.opacity = 0.3
            greenCircle.opacity = 1
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
