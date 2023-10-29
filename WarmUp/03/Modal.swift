//
//  Modal.swift
//  WarmUp
//
//  Created by 김범수 on 10/29/23.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        
        
        VStack{
            Text("메인 페이지 입니다.")
            Button{
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
//            Text("모달 페이지 입니다.")
            Detail(showModal: $showModal)
        }
    }
}

#Preview {
    Modal()
}
