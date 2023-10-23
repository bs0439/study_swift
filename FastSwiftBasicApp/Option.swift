//
//  Option.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/22/23.
//

import SwiftUI

struct Option: View {
    
    var leeo: People? = People(name: "leeo", mbti: MBTI(name: "ENFP"))
    var beomsu = People(name: "범수", petName: "두부")
    var chaeyoung = People(name: "채영", petName: "요미와 꼬미")
    
    
    var body: some View {
        VStack{
//            if let leeo = leeo{
//                if let mbti = leeo.mbti{
//                    if let name = mbti.name{
//
//                    }
//                }
//            }
            
            if let leeoMbtiName = leeo?.mbti?.name{
                Text(leeoMbtiName)
            }else{
                Text("No MBTI NAME")
            }
            
            
            
//            if let petName = leeo.petName{
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(leeo.name) 애완동물 이름은 없어요")
//            }
            
            if let petName = beomsu.petName{
                Text("이름은 \(beomsu.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(beomsu.name) 애완동물 이름은 없어요")
            }
            
            if let petName = chaeyoung.petName{
                Text("이름은 \(chaeyoung.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(chaeyoung.name) 애완동물 이름은 없어요")
            }

            
            
        }
    }
}

struct People{
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI{
    var name: String?
}

#Preview {
    Option()
}
