//
//  GestHome.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct GuestHome: View {
    @ObservedObject var viewModel:ChatViewModel
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
            Button(action:{
                self.viewModel.getRoomInfo(id: self.id)
                self.viewModel.changeState(newState: .guestStarted)
                WindowControllers.shared.GuestToolBarController.showWindow(nil)
                WindowControllers.shared.MainController.close()
                    
            }) {
                Text("　　はじめる　　")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            
            Spacer()
            
            Button(action:{self.viewModel.changeState(newState: .Home)}) {
                Text("　  戻る  　")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            Spacer()
        }
    }
}


