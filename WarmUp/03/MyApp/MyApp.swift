//
//  MyApp.swift
//  WarmUp
//
//  Created by 김범수 on 10/29/23.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView{
            FirstList()
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            
            Text("두번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            
            
            Text("세번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
            
            
            Text("네번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.down.fill")
                }
            //
            
            //
        }
        .sheet(isPresented: $showModal, content: {
            TabView{
                OnboardingSample(onboardingTitle: "온보딩 1", backgroundColor: .blue)
                
                OnboardingSample(onboardingTitle: "온보딩 2", backgroundColor: .green)
                
//                OnboardingSample(onboardingTitle: "온보딩 3")
//                ZStack{
//                    Color.green.ignoresSafeArea()
//                    Text("온보딩2")
//                }
                ZStack{
                    Color.gray.ignoresSafeArea()
                    VStack{
                        Text("온보딩3")
                        Button(action: {
                            showModal = false
                        }, label: {
                            Text("Start")
                        })
                    }
                }

            }
            .tabViewStyle(.page)
            
        })
        .onAppear{
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
