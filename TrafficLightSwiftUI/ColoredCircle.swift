//
//  ColoredCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Айдар Рахматуллин on 10.12.2020.
//

import SwiftUI

struct ColoredCircle: View {
    let color: UIColor
    var opacity: Double = 0.3
    
//    let alpha: CGFloat
    var body: some View {
        Color(color)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .opacity(opacity)
        
    }
}

struct ColoredCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredCircle(color: .red)
    }
}
