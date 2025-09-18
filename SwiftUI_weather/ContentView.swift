//
//  ContentView.swift
//  SwiftUI_weather
//
//  Created by Cyzere Happy on 9/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),                startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Kigali, Rwanda")
                    .font(.system(size: 32, weight: .medium, design:  .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
        }

    }
}

#Preview {
    ContentView()
}
