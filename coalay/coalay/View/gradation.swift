//
//  gradiate.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct Gradation:View {
    var body: some View{
        LinearGradient(gradient: Gradient(colors: [.black, .gray]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
