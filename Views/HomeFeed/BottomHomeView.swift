//
//  BottomHomeView.swift
//  Clubhouse
//
//  Created by Justin747 on 10/31/21.
//

import SwiftUI

struct BottomHomeView: View {
    var body: some View {
        ZStack {
            
            Image.grid
                .font(Font.Nunito.bold(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 15)
            
            Button(action: {}, label: {
                Label("Start a room", systemImage: "plus")
            })
                .padding(.horizontal, 16)
                .padding(.vertical, 9)
                .font(Font.Nunito.bold(size: 18))
                .foregroundColor(.white)
                .background(Color.customGrey)
                .cornerRadius(21, antialiased: true)

        }
        .frame(maxWidth: .infinity, maxHeight: 105, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.1), Color.background]),
                                   startPoint: .top, endPoint: .bottom))
    }
}

struct BottomHomeView_Previews: PreviewProvider {
    static var previews: some View {
        BottomHomeView()
    }
}
