//
//  LongPressView.swift
//  RecognizingGestures
//
//  Created by Oleksii on 04.02.2025.
//

import SwiftUI

struct LongPressView: View {
    @State private var sizeIndex = 0
    
    private var sizes: [CGSize] = [
        CGSize(width: 150, height: 80),
        CGSize(width: 200, height: 40),
        CGSize(width: 50, height: 250),
        CGSize(width: 220, height: 100),
        CGSize(width: 90, height: 90)
    ]
    
    var longPressGesture: some Gesture {
        LongPressGesture().onEnded { value in
            withAnimation {
                sizeIndex += 1
                if sizeIndex == sizes.count {
                    sizeIndex = 0
                }
            }
        }
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LongPressView()
}
