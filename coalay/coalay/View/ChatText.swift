//
//  ChatText.swift
//  coalay
//
//  Created by 木村凌大 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct ChatText: View {
    var text :String
    var body: some View {
        ZStack{
            Path(roundedRect: CGRect(x: 1600, y: 120, width: 200, height: 100),cornerRadius: 40).background(Color.clear)
            HStack {
                Text(self.text).frame(width: 1710, height: 100,alignment: .trailing).foregroundColor(.white)
                Spacer()
            }
        }
    }
}

