//
//  Home.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var viewModel:ChatViewModel
    var body: some View {
        VStack {
            Icon()
            Spacer()
            Button(action:{self.viewModel.changeState(newState:.guestHome )}) {
                Text("　 参加する 　")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            .border(Color.clear)
            
            Spacer()
            Button(action:{
                let id = UUID().uuidString
                self.viewModel.addRoom(id: id)
                self.viewModel.changeState(newState:.hostHome )
                
            }) {
                Text("部屋を作成する")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .border(Color.clear)
            .scaleEffect(1.5)
        
            Spacer()
        }
    }
}


