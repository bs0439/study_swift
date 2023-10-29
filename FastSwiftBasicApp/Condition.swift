//
//  Condition.swift
//  FastSwiftBasicApp
//
//  Created by 김범수 on 10/14/23.
//

import SwiftUI

struct Condition: View {
    
    var count = 5
    var hasLogin = false;
    
    
    
    var body: some View {
        
        
        if(count > 4){
            Text("숫자는 4보다 큽니다")
        }else{
            Text("숫자는 4보다 작습니다")
        }
        Text("Hello, World!")
        
        
        if(hasLogin){
            Text("로그인 하시겠습니까?")
        }else{
            Text("로그아웃 하시겠습니까?")
        }
        
        
    }
}

#Preview {
    Condition()
}

