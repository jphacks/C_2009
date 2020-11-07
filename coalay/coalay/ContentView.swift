//
//  ContentView.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/01.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI
import Combine

struct ButtonAction: View {
    @State var bool:Bool
    @State var text:String
    var body: some View {
        Button(action:{self.bool.toggle()}) {
            Text(self.text)
        }
        .background(Color.blue)
        .cornerRadius(5)
        .scaleEffect(1.5)
        
    }
}

struct ContentView: View {

    @State var roomID :String = ""
    @ObservedObject var chat = WindowControllers.shared.viewModel
    var body: some View {
        
        ZStack {
            Gradation()
            VStack{
                Spacer()
                Group{
                    
                    if chat.uiState == .Home{
                        Home(viewModel:chat)
                        
                    }
                    else if chat.uiState == .guestHome{
                        GuestHome(viewModel: chat, id:roomID)
                        
                    }
                    else if chat.uiState == .hostHome
                    {
                        HostHome(viewModel:chat)

                    }
                    else if chat.uiState == .hostStarted
                    {
                        HostStarted(viewModel:chat)

                    }
                    else if chat.uiState == .guestStarted
                    {
                        GuestStarted(viewModel:chat)

                    }
                }
                Spacer()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


