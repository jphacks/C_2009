//
//  TransparentWindow.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct TransparentWindow: View {
    var width:CGFloat
    var height:CGFloat
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).frame(width: width, height: height, alignment: .center).foregroundColor(.black)
    }
}

