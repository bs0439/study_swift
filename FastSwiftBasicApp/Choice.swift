//
//  Choice.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/17/23.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .north
    var member: member = .bs
    var menu: Menu = .steak("레어")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum member: String{
    case bs
    case cy
    case dh
    case js
}

enum Menu{
    case pasta
    case pizza
    case steak(String)
    
}
//커밋확인용
//enum Direction: String{
//    case north = "북"
//    case west = "서"
//    case east = "동"
//    case south = "남"
//}

#Preview {
    Choice()
}
