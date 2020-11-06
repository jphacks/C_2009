//
//  GestHome.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct GestHome: View {
    @State var id:String
    var body: some View {
        VStack{
            Icon()
            Spacer()
            TextField("ROOM ID",text:$id)
                .font(.system(size:20))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white,lineWidth: 3))
                .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
             Spacer()
            Button(action:{print("a")}) {
                Text("　　はじめる　　")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            
            Spacer()
            
            Button(action:{print("a")}) {
                Text("　  戻る  　")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            Spacer()
        }
    }
}


