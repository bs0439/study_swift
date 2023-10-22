//
//  Selection.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/17/23.
//

import SwiftUI

struct Selection: View {
    
    @State var mydirection: Direction = .south
    
    var body: some View {
        
        VStack{
            switch mydirection {
            case .north:
                Text("\(mydirection.rawValue)쪽은 추워요")
            case .west:
                Text("\(mydirection.rawValue)쪽은 석양이 예뻐요")
            case .east:
                Text(mydirection.rawValue)
            case .south:
                Text(mydirection.rawValue)
            default:
                Text("에러입니다.")
            }
            
            Button(action: {
                
                
                
                switch mydirection {
                case .north, .west:
                    mydirection = .east
                case .east:
                    mydirection = .south

                default:
                    mydirection = .north
                }
                
            }, label: {
                Text("돌리기")
            })
        }
    }

//    enum Direction: String{
//        case north = "북"
//        case west = "서"
//        case east = "동"
//        case south = "남"
//        case myway
//    }
}

#Preview {
    Selection()
}
