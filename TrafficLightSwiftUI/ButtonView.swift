//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Айдар Рахматуллин on 11.12.2020.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(action: action) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .frame(width: 170, height: 50)
            .background(Color.init(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 10))
            .cornerRadius(20)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
