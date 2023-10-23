//
//  Layout.swift
//  WarmUp
//
//  Created by 김범수 on 10/23/23.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            
            Text("Text Element 3")
                .font(.body)
                .padding()

            HStack{

                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                
                MyButton(buttonTitle: "Button 2", buttonColor: .indigo)
            }
            
            Button(action: {
                
            }, label: {
                VStack{
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}

#Preview {
    Layout()
}
