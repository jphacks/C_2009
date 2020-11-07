//
//  TransparentWindow.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct TransparentWindow: View {
    @ObservedObject var viewModel: ChatViewModel
    var width:CGFloat
    var height:CGFloat
    var body: some View {
            VStack{
                ForEach(0..<viewModel.messages.count){num in
                    ChatText(text: viewModel.messages[num].content)
                }
            }
            .frame(width: width, height: height, alignment: .center)
    }
}


