//
//  MyButton.swift
//  WarmUp
//
//  Created by 김범수 on 10/23/23.
//

import SwiftUI

struct MyButton: View {
    
    var buttonTitle: String
    var buttonColor: Color
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        })
    }
}

#Preview {
    MyButton(buttonTitle: "Button 4", buttonColor: .brown)
}
