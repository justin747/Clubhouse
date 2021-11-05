//
//  ActiveRoomView.swift
//  Clubhouse
//
//  Created by Justin747 on 11/4/21.
//

import SwiftUI

struct ActiveRoomView: View {
    
    let room: FeedRoom
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                
                RoomHeaderView()
                    .padding(.bottom, 30)
                
                ScrollView {
                    
                    HStack(alignment: .top) {
                        
                        Text(room.roomName)
                            .padding(.leading, 25)
                        
                        Spacer()
                        
                        Image.ellipsis
                            .padding(.top, 10)
                            .padding(.trailing, 25)
                    }
                    .padding(.top, 15)
                    .foregroundColor(Color.textBlack)
                    .font(Font.Nunito.bold(size: 20))
                    
                    HostsView(people: room.hosts)
                        .padding(.horizontal, 15)
                    
                    if !room.followedBySpeaker.isEmpty {
                        OthersView(title: "Followed by the speakers", people: room.followedBySpeaker)
                    }
                    
                    OthersView(title: "Others in the room", people: room.othersInRoom)
                    
                }
                .padding(.bottom, 110)
                .background(Color.cardBackground)
                .cornerRadius(37)
            }
            .padding(.top, 65)
            
            BottomRoomView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct ActiveRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveRoomView(room: FeedRoom.dummyData[0])
    }
}
