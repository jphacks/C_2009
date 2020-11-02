//
//  ContentView.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/01.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Button("login"){
                assert(true, "てきとうーな処理かいて")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
