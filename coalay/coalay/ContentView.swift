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

struct gradation:View {
    @State var color1:Color
    @State var color2:Color
    var body: some View{
        LinearGradient(gradient: Gradient(colors: [self.color1, self.color2]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView: View {
    @State var desktop = false
    @State var room = false
    @State var id = ""
    var chat = Chat()
    var body: some View {
        
        ZStack {
            
            gradation(color1: .black, color2: .gray)
            
            VStack {
                
                Text("COALAY")
                    .font(.custom("Times-Roman",size:80))
                    .foregroundColor(.white)
                
                Spacer()
                
                if room {
                    TextField("ROOM ID",text:$id)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black,lineWidth: 3))
                        
                    Spacer()
                    ButtonAction(bool:room,text:"はじめる")
                   
                }
                else{
                    ButtonAction(bool:room,text:"　 参加する 　")
                }
                
                Spacer()
                
                Button(action:{self.room.toggle()}){
                    Text(self.room ? "戻る":"部屋を作成する")
                }
                .background(Color.blue)
                .cornerRadius(5)
                .scaleEffect(1.5)

                Spacer()
                Button(action:{self.chat.greetServer(name: "hello")}){
                    Text("モーダル")
                }
                .sheet(isPresented: $desktop){
                    ModalView(isActive: self.$desktop)
                }
            }
        }
    }
}

struct ModalView: View {

    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Modal View").padding()
            Button("Close Modal") {
                self.isActive = false
            }
            Spacer()
        }.edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(.clear))
        .padding()
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}


