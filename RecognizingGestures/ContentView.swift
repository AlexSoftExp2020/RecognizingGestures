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
                NavigationLink(destination: //MARK: TODO LongPressView(), label: <#T##() -> View#>)
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
