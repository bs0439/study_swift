//
//  Nil.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/17/23.
//

import SwiftUI

struct Nil: View {
    
    var name: String = "bs"
    var petname: String? = "없음"
    
    var bami: String = "Bami"
    var petname2: String = ""
    
    var body: some View {
        VStack{
//            Text("이름은 \(name) 펫 네임은 \(petname) 입니다.")
            Text("이름은 \(bami) 펫 네임은 \(petname2)입니다.")
        }
        
        .onAppear(){
            print("이름은 \(name) 펫 네임은 \(petname) 입니다.")
            print("이름은 \(bami) 펫 네임은 \(petname2)입니다.")
        }
    }
}



#Preview {
    Nil()
}
