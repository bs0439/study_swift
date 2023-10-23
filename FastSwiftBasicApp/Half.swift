//
//  Half.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/15/23.
//

import SwiftUI

struct Half: View {
    var name: String = "BS"
    var age: Int = 20
    
    var names: [String] = ["리이오", "존", "바미", "테리우스", "올리비아"]
    
    var body: some View {
        
        List {
            ForEach(names, id: \.self) { name in
                var welcom = sayHi(to: name)
                if name == "리이오"{
                    Text("기다렸어요 \(welcom)")
                }else{
                    Text(name)
                }
//                Text(welcom)
            }
        }
    }
    
    func sayHi(to name: String) -> String{
        return "\(name)님 반갑습니다"
    }
}

#Preview {
    Half()
}
