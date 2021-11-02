//
//  OtherPersonView.swift
//  Clubhouse
//
//  Created by Justin747 on 11/1/21.
//

import SwiftUI

struct OtherPersonView: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .overlay(NewView()
                    .offset(x: -20, y: 5)
                    .opacity(person.state.contains(.new) ? 1 : 0))
    }
}

struct OtherPersonView_Previews: PreviewProvider {
    static var previews: some View {
        OtherPersonView(person: FeedRoom.dummyData[0].hosts[0])
    }
}
