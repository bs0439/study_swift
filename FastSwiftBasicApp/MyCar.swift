//
//  MyCar.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/22/23.
//

import SwiftUI

struct MyCar: View {
    
    @State var speed: Int = 20
    
    var myCar: KIA = KIA()
    var broCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    var body: some View {
        VStack{
            Text("speed : \(speed)")
            Button(action: {
                speed = broCar.speedDown(with: speed)
                cars.randomElement()?.speedDown(with: speed)
            }, label: {
                Text("감속")
            })
        }
        

    }
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 줄어듭니다")
        return speed - 5
    }
        
}

struct Hyundai: Driveable{
    func speedDown(with speed: Int) -> Int {
        print("속도가 줄어들어요")
        return speed - 9
    }
    
    
}

protocol Driveable{
    func speedDown(with speed: Int) -> Int
}

#Preview {
    MyCar()
}
