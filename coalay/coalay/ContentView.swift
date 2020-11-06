//
//  ContentView.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/01.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI


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
    @State var uiState = UIState.Home
    @State var roomID :String = ""
    var chat = ChatViewModel()
    var body: some View {
        
        ZStack {
            Gradation()
            VStack{
                Spacer()
                Icon()
                Spacer()
                Group{
                    
                    if uiState == .Home{
                        Icon()
                        
                    }
                    else if uiState == .guestHome{
                        Text("guestHome")
                        
                    }
                    else if uiState == .hostHome
                    {
                        Text("hostHOme")

                    }
                    else if uiState == .hostStarted
                    {
                        Text("hostStarted")

                    }
                    else if uiState == .guestStarted
                    {
                        Text("guestStarted")

                    }
                    else if uiState == .Disappear
                    {
                        Text(".Disapper")

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


