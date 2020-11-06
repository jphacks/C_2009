//
//  hostHome.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct HostHome: View {
    var body: some View {
        VStack {
            Icon()
            Spacer()
            Text("")
                .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.white)
            Spacer()
            Button(action:{print("b")}) {
                Text("部屋を作成する")
            }
            .background(Color.blue)
            .cornerRadius(5)
            .scaleEffect(1.5)
            
        
            Spacer()
        }
    }
}

struct hostHome_Previews: PreviewProvider {
    static var previews: some View {
        HostHome()
    }
}
