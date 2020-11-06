//
//  chat.swift
//  chat
//
//  Created by 落合裕也 on 2020/11/06.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Foundation
import GRPC
import NIO
import SwiftProtobuf


final class Chat{
    
    var client :HelloGrpc_HelloGrpcClient
    //最新のメッセージがないか確認
    var roomInfo:HelloGrpc_RoomInfo
    init() {
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let channel = ClientConnection.insecure(group: group)
            .connect(host: "localhost", port: 10000)
        self.client = HelloGrpc_HelloGrpcClient(channel: channel)
        self.roomInfo = HelloGrpc_RoomInfo()
        
        
    }
    func greetServer(name:String){
        var message = HelloGrpc_GreetRequest()
        message.name = name
        client.greetServer(message).response.whenComplete{ result in
            switch result {
            case let .success(response):
                print(response.msg)
            case let .failure(error):
                print("get failed with error: \(error)")
            }
        }
    }
    
    func addRoom(id:String){
        var message = HelloGrpc_RoomRequest()
        message.id = id
        client.addRoom(message).response.whenComplete{ result in
            switch result {
            case let .success(response):
                print("id:\(response.id),count:\(response.messageCount)")
            case let .failure(error):
                print("get failed with error: \(error)")
            }
        }
    }
    
    func getRoomInfo(id:String){
        var message = HelloGrpc_RoomRequest()
        message.id = id
        client.getRoomInfo(message).response.whenComplete{ result in
            switch result {
            case let .success(response):
                print("id:\(response.id),count:\(response.messageCount)")
            case let .failure(error):
                print("get failed with error: \(error)")
            }
            
        }
        func getRooms(){
            client.getRooms(HelloGrpc_Null()).response.whenComplete{ result in
                switch result {
                case let .success(response):
                    print("get receieved: \(response.rooms)")
                case let .failure(error):
                    print("get failed with error: \(error)")
                }
            }
        }
        func sendMessage(id:String,name:String,content:String){
            var message = HelloGrpc_SendRequest()
            message.id = id
            message.name = name
            message.content = content
            let send = client.sendMessage()
            send.sendMessage(message, promise: nil)
            send.sendEnd(promise: nil)
        }
        
        func getMessages(id:String){
            var message = HelloGrpc_MessagesRequest()
            message.id = id
            client.getMessages(message){
                response in print("id :\(response.id) content:\(response.content) name:\(response.name)")
            }
        }
    }
}
