//
//  Setting.swift
//  WarmUp
//
//  Created by 김범수 on 10/28/23.
//

import SwiftUI

struct Settinginfo: Hashable{
    let title: String
    let systemName: String
    let backgroundColor: Color
    let forgroundColor: Color = .white
}


struct Setting: View {
    
    let data: [[Settinginfo]] = [[Settinginfo(title: "스크린 타임",
                                           systemName: "hourglass",
                                           backgroundColor: .purple)],
                               [Settinginfo(title: "스크린 타임",
                                                                      systemName: "hourglass",
                                                                      backgroundColor: .purple),
                               Settinginfo(title: "일반",
                                                                      systemName: "gear",
                                                                      backgroundColor: .gray),
                               Settinginfo(title: "손쉬운 사용",
                                                                      systemName: "person.crop.circle",
                                                                      backgroundColor: .blue)]]
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(data, id: \.self){ section in
                    Section{
                        ForEach(section, id: \.self) { item in
                            Label(
                                title: { Text(item.title) },
                                icon: { Image(systemName: item.systemName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(.all, 7)
                                        .background(item.backgroundColor)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            )
                        }
                    }
                }
//                Section {
//                    Label(
//                        title: { Text("스크린 타임") },
//                        icon: {
//                            Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)
//                        }
//                    )
//                }
//                
//                
//                Section{
//                    Label(
//                        title: { Text("스크린 타임") },
//                        icon: { Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)}
//                    )
//                    Label(
//                        title: { Text("일반") },
//                        icon: { Image(systemName: "gear")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)}
//                    )
//                    Label(
//                        title: { Text("손쉬운 사용") },
//                        icon: { Image(systemName: "person.crop.circle")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)}
//                    )
//                }
//                
//                Section{
//                    Label(
//                        title: { Text("암호") },
//                        icon: { Image(systemName: "key.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)}
//                    )
//                    Label(
//                        title: { Text("개인정보 보호 및 보안") },
//                        icon: { Image(systemName: "key.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)}
//                    )
//                }
//                

            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
