//
//  VarialbleType.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/5/23.
//

import SwiftUI

struct VarialbleType: View {
    
    var name: String = "채영"
    var age: Int = 20
    var height: Float = 158.5
    var havePet: Bool = true
    
    let musics: Set<String> = ["Rock", "Jazz", "Classical"]
    
    var dict = ["XYZ":"Toronto Pearson"]
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack{
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(havePet.description)")
        }
    }
}

#Preview {
    VarialbleType()
}
