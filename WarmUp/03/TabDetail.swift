//
//  TabDetail.swift
//  WarmUp
//
//  Created by 김범수 on 10/29/23.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack{
                
                Text("This is detail")
                
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

#Preview {
    TabDetail()
}
