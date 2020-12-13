//
//  ColoredCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Айдар Рахматуллин on 10.12.2020.
//

import SwiftUI

struct ColoredCircleView: View {
    
    let color: UIColor
    let opacity: Double
    
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
        ColoredCircleView(color: .red, opacity: 0.3)
    }
}
