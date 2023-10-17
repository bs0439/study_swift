//
//  Diff.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/16/23.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "리어카", owner: "범수")
    var myKar = Kar(name: "리어카2", owner: "범수")
    @State var name: String = ""
    
    
    var body: some View {
        VStack{
            Text("\(myCar.name)의 주인은 \(myCar.owner)입니다")
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            
            Button(action: {
                
                var broKar = myKar
                broKar.name = "동생차"
                broKar.owner = "동생"
                
                myCar.sayHi()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

struct Car{
    var name: String
    var owner: String
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class Kar{
    @Published var name: String
    var owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi(){
        print("hi \(owner)")
    }
}

#Preview {
    Diff()
}
