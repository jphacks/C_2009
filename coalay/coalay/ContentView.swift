//
//  ContentView.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/01.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct ButtonAction: View {
    @State var text:String
    var fun: () -> ()
    var body: some View {
        Button(action:{self.fun()}) {
            Text(self.text)
        }
        .background(Color.blue)
        .cornerRadius(5)
        .scaleEffect(1.5)
        
    }
}

struct Gradation:View {
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
    var body: some View {
        
        ZStack {
            
            Gradation(color1: .black, color2: .gray)
            
            VStack {
                
                Text("COALAY")
                    .font(.custom("Times-Roman",size:80))
                    .foregroundColor(.white)
                
                Spacer()
                
                if room {
                    TextField("ROOM ID",text:$id)
                        .font(.system(size:20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white,lineWidth: 3))
                        .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    ButtonAction(text:"はじめる", fun: { print("f")})
                }
                else{
                    ButtonAction(text:"　 参加する 　", fun: {self.room.toggle()})
                }
                Spacer()
                
                ButtonAction(text: (self.room ? "戻る":"部屋を作成する"),
                             fun:{self.room.toggle()})
            
            Spacer()
            Button(action:{self.desktop.toggle()}){
                Text("モーダル")
            }
            .sheet(isPresented: $desktop){
                ModalView(isActive: $desktop)
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
                isActive = false
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
        Group {
            ContentView()
            
        }
    }
}


