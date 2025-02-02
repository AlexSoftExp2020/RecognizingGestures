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
                    //MARK: TODO GestureRow
                }
            }
            .navigationTitle("Gestures")
        } detail: {
            Text()
        }

    }
}

#Preview {
    ContentView()
}
