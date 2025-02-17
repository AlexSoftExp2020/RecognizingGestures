//
//  RotateView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 06.02.2025.
//

import SwiftUI

struct RotateView: View {
    @State private var rotation = Angle.zero
    
    var rotationGesture: some Gesture {
        RotationGesture()
            .onChanged { angle in
            rotation = angle
        }
            .onEnded { angle in
                rotation = angle
            }
    }
    var body: some View {
        VStack {
            Text("Use two fingers to rotate the box")
            Spacer()
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 225, height: 225)
                .rotationEffect(rotation)
                .gesture(rotationGesture)
            Spacer()
        }
        .navigationTitle("Rotate").padding().toolbar {
            Button("Reset") {
                rotation = .zero
            }
        }
    }
}

#Preview {
    RotateView()
}
