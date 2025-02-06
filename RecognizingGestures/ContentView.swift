//
//  ContentView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 31.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink(destination: TapView()) {
                    GestureRow(title: "Tap", description: "Tap a shape to interact with it.", systemImage: "hand.point.up.left")
                }
                NavigationLink(destination: LongPressView()) {
                    GestureRow(title: "Touch and Hold", description: "Touch and hold a shape to interact with it.", systemImage: "hand.tap")
                }
                NavigationLink(destination: DragView()) {
                    GestureRow(title: "Drag", description: "Drag a shape using one finger.", systemImage: "arrow.up.and.down.and.arrow.left.and.right")
                }
                NavigationLink(destination: //RotateView(), label: <#T##() -> View#>)
            }
            .navigationTitle("Gestures")
        } detail: {
            Text("Select a Gesture Example")
        }

    }
}

#Preview {
    ContentView()
}
