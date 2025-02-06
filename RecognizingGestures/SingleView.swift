//
//  SingleView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 06.02.2025.
//

import SwiftUI

struct SingleView: View {
    @State var lineStart = CGPoint.zero
    @State var lineEnd = CGPoint.zero
    
    var lineDrawingGesture: some Gesture {
        DragGesture()
            .onChanged { value in
            lineStart = value.startLocation
            lineEnd = value.location
        }
            .onEnded { value in
                lineEnd = value.location
            }
    }
    
    var body: some View {
        VStack {
            Text("Touch and drag to make a line")
            Spacer()
            Path { path in
                path.move(to: lineStart)
                path.move(to: lineEnd)
            }
            .stroke(Color.green, lineWidth: 8.0)
            .contentShape(Rectangle())
            .gesture(lineDrawingGesture)
        }
        .navigationTitle("Line Drawing")
        .padding()
        .toolbar {
            Button("Reset") {
                lineStart = .zero
                lineEnd = .zero
            }
        }
    }
}

#Preview {
    SingleView()
}
