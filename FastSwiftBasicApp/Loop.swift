//
//  Loop.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/14/23.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["김범수", "양동현", "이호영", "이진선"]
    
    var body: some View {
        VStack{
            ForEach(names, id: \.self){ item in
                Text(item)
                
            }
        }
    }
}

#Preview {
    Loop()
}
