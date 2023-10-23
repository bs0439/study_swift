//
//  Sample.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/22/23.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        
        Destination(direction: .north, 
                    food: "파스타맛집",
                    image: Image(systemName: "carrot")),
        
        Destination(direction: .east
                    , food: nil
                    , image: Image(systemName: "sun.max.fill")),
        
        Destination(direction: .west
                    , food: nil
                    , image: Image(systemName: "car.fill")),
        
        Destination(direction: .south
                    , food: "순대맛집"
                    , image: Image(systemName: "appletv.fill"))
        
    ]
    
    @State var selectdeDestination: Destination?
    var body: some View {
        VStack{
            selectdeDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            if let destination = selectdeDestination{
                Text(destination.direction.rawValue)
                if let food = destination.food{
                    Text(food)
                }
            }
            
            
            Button(action: {
                selectdeDestination = data.randomElement()
            }, label: {
                Text("돌려요")
            })
        }
    }
}

struct Destination{
    let direction: Direction
    let food: String?
    let image: Image
}

enum Direction: String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
    
}



#Preview {
    Sample()
}
