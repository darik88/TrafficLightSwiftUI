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
    
    var body: some View {
        Color(color)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .frame(width: 100, height: 100)
            .opacity(opacity)
    }
}

struct ColoredCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredCircle(color: .red)
    }
}
