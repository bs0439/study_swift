//
//  Detail.swift
//  WarmUp
//
//  Created by 김범수 on 10/29/23.
//

import SwiftUI

struct Detail: View {
    @Binding var showModal: Bool
    
    var body: some View {
        Text("모달 페이지 입니다._2")
        
        Button(action: {
            showModal = false
        }, label: {
            Text("닫기")
        })
    }
}

#Preview {
    Detail(showModal: .constant(true))
}
