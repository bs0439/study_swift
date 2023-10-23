//
//  MyCollections.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/5/23.
//

import SwiftUI

struct MyCollections: View {
    
    var foods: [String] = ["eggs", "banana", "beans"]
    var jazzs: Set<String> = ["aaa", "bbb", "ccc"]
    var hiphop: Set<String> = ["labdap", "rap", "aaa"]
    var koEngDict: [String:String] = ["사과":"Apple"]
    
    var body: some View {
        Text(hiphop.intersection(jazzs).description)
        Text(koEngDict["사과"]!)
        Text("동현시치")
        
        Button(action: {
           var intersectionMusic =  hiphop.intersection(jazzs)
            intersectionMusic.description
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
}

#Preview {
    MyCollections()
}
