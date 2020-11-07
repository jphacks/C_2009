//
//  DesktopView.swift
//  coalay
//
//  Created by 木村凌大 on 2020/11/06.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import SwiftUI

struct GuestToolBar: View {
    @State var remote_sound = false
    @State var remote_camera = false
    var body: some View {
        
        HStack(spacing:40){
            VStack{
                Button(action: {self.remote_sound.toggle()}){
                    Image(self.remote_sound ? "sound_on" : "sound_off")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30).padding()
                }
            }
            .frame(width: 50, height: 80)
            
            
            VStack{
                Button(action: {self.remote_camera.toggle()}){
                    Image(self.remote_camera ? "camera_on" :"camera_off")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30).padding()
                }

            }
            .frame(width: 50, height: 80)
            
        }
        .scaleEffect(1.5)
        .frame(width: 300, height: 300)
    }
}



