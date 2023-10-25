//
//  ListLoop.swift
//  WarmUp
//
//  Created by 김범수 on 10/25/23.
//

import SwiftUI

struct Fruit: Hashable{
    let name: String
    let matchFruitName: String
    var price: Int
}

struct ListLoop: View {
    
    var favoriteFruits = [
          Fruit(name: "Apple", matchFruitName: "Banana", price: 1000)
          , Fruit(name: "Banana", matchFruitName: "Cherry", price: 2000)
          , Fruit(name: "Cherry", matchFruitName: "Double Kiwi", price: 3000)
          , Fruit(name: "Double Kiwi", matchFruitName: "Elder berry", price: 4000)
          , Fruit(name: "Elder berry", matchFruitName: "Apple", price: 5000)
          , Fruit(name: "Apple", matchFruitName: "Banana", price: 1000)
    ]
    

    
//    var FruitList: String[]
    var body: some View {
        NavigationStack{
            List {
                ForEach(favoriteFruits, id: \.self){ fruit in
                    VStack(alignment: .leading){
                        Text("name : \(fruit.name)")
                        Text("matchFruitName : \(fruit.matchFruitName)")
                        Text("price : \(fruit.price)")
                    }
                }
        
            }
            .navigationTitle("Fruit List")
        }
        
    }
}

#Preview {
    ListLoop()
}
