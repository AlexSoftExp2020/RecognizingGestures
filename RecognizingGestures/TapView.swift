//
//  TapView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 02.02.2025.
//

import SwiftUI

struct TapView: View {
    @State private var color: Color = Color.primary
    
    var tapGesture: some Gesture {
        TapGesture()
            .onEnded {
            withAnimation {
                color = Color.random()
            }
        }
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TapView()
}

extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1),
                     green: Double.random(in: 0...1),
                     blue: Double.random(in: 0...1))
    }
}
