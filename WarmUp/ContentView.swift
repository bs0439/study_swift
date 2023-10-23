//
//  ContentView.swift
//  WarmUp
//
//  Created by 김범수 on 10/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .badge(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "folder.circle.fill")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .colorInvert()
                .accentColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)

            
        }
        
    }
}

#Preview {
    ContentView()
}
