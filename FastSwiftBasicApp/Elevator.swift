//
//  Elevator.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/15/23.
//

import SwiftUI

struct Elevator: View {
    
    
    
    
    @State var myElevetor = ElevatorStruct()
    
    var body: some View {
        VStack{
            Text("층수 : \(myElevetor.level)")
            
            HStack{
                Button {
                    myElevetor.goDown()
                } label: {
                    Text("아래로")
                }
                
                Button {
                    myElevetor.goUp()
                } label: {
                    Text("위로")
                }
                
            }
        }
    }
}

struct ElevatorStruct {
    var level: Int = 1
    
    mutating func goDown() {
        level = level - 1
    }
    
    mutating func goUp() {
        level = level + 1
    }
}

#Preview {
    Elevator()
}
