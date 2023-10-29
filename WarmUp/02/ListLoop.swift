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
    
    @State var favoriteFruits = [
          Fruit(name: "Apple", matchFruitName: "Banana", price: 1000)
          , Fruit(name: "Banana", matchFruitName: "Cherry", price: 2000)
          , Fruit(name: "Cherry", matchFruitName: "Double Kiwi", price: 3000)
          , Fruit(name: "Double Kiwi", matchFruitName: "Elder berry", price: 4000)
          , Fruit(name: "Elder berry", matchFruitName: "Apple", price: 5000)
          , Fruit(name: "Apple", matchFruitName: "Banana", price: 1000)
    ]
    

    @State var fruitName: String = ""
    
//    var FruitList: String[]
    var body: some View {
        NavigationStack{
            VStack{
                
                HStack{
                    TextField("insert fruit name", text: $fruitName)
                    Button(action: {
                        favoriteFruits.append(Fruit(name: fruitName
                                                    , matchFruitName: "Apple"
                                                    , price: 1000))
                    }, label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
                List {
                    ForEach(favoriteFruits, id: \.self){ fruit in
                        VStack(alignment: .leading){
                            Text("name : \(fruit.name)")
                            Text("matchFruitName : \(fruit.matchFruitName)")
                            Text("price : \(fruit.price)")
                        }
                    }.onDelete(perform: { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
//                        favoriteFruits.remove(at: 0)
                    })
                    
                }
            }
            .navigationTitle("Fruit List")
        }
        
    }
}

#Preview {
    ListLoop()
}
