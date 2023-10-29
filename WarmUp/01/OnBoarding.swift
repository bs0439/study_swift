//
//  OnBoarding.swift
//  WarmUp
//
//  Created by 김범수 on 10/25/23.
//

import SwiftUI

struct OnBoarding: View {
    
    
    var body: some View {
        VStack{
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top, 50)
                .padding(.bottom, 30)
            
            HStack{
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                    
                VStack(alignment: .leading){
                    Text("Placeholder")
                        .font(.headline)
                
                    Text("Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
                
            }
            .padding(.vertical)
            HStack{
//                Image(systemName: "person.2")
                Image(systemName: "apple.terminal.on.rectangle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                    
                VStack(alignment: .leading){
                    Text("Copy & Paste Edits")
                        .font(.headline)
                
                    Text("Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            HStack{
                Image(systemName: "character.book.closed.fill.ko")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                    
                VStack(alignment: .leading){
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        .font(.headline)
                
                    Text("Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people Combine Photos and videos wuth the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            .padding(.bottom, 50)
        }
    }
    
    
}

#Preview {
    OnBoarding()
}
