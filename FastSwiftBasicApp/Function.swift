//
//  Function.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/15/23.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack{
            Text("input number is \(inputNumber)")
            
            Button(action: {
                inputNumber = plusFive(input: inputNumber)
                
                
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        
        
        
    }
    
    func plusFive(input: Int) -> Int{
        return input + 5
    }
}

#Preview {
    Function()
}
