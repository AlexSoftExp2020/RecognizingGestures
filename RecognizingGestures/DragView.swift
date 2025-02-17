//
//  DragView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 04.02.2025.
//

import SwiftUI

struct DragView: View {
    private let circleSize: CGFloat = 100
    @State private var offset = CGSize.zero
    var dragGesture: some Gesture {
        DragGesture().onChanged { value in
            offset = CGSize(width: value.startLocation.x + value.translation.width - circleSize/2,
                            height: value.startLocation.y + value.translation.height - circleSize/2)
        }
    }
    
    var body: some View {
        VStack {
            Text("Use one finger to drag the circle around")
            Spacer()
            Circle()
                .foregroundColor(.teal)
                .frame(width: circleSize, height: circleSize)
                .offset(offset)
                .gesture(dragGesture)
            Spacer()
        }
        .navigationTitle("Drag")
        .padding()
        .toolbar {
            Button("Reset") {
                offset = .zero
            }
        }
    }
}

#Preview {
    DragView()
}
