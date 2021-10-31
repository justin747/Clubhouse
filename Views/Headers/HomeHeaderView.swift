//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Justin747 on 10/30/21.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            Image.search
            Image.invite
            Image.calendar
            Image.notificationBell
        }
        
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
