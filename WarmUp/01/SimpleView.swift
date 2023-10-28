//
//  SimpleView.swift
//  WarmUp
//
//  Created by 김범수 on 10/23/23.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("헤드라인 입니다.")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 입니다.")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다.")
                .font(.body)
            
            Button(action: {
                
            }, label: {
                Text("Click me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            })
            
            Button(action: {
                
            }, label: {
                Text("안녕하세요")
            })
            
            
            
            
            
        }
    }
}

#Preview {
    SimpleView()
}
