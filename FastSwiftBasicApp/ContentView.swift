//
//  ContentView.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/5/23.
//

import SwiftUI

struct ContentView: View {
    
    var place: String = "Paris"
    
    var name: String = "채영"
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Paris \(name)")
            Text(place)
            Text(name)
            Text(name)
            Text("git test")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
