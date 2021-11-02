//
//  PersonImageView.swift
//  Clubhouse
//
//  Created by Justin747 on 11/1/21.
//

import SwiftUI

struct PersonImageView: View {
    
    let image: String?
    
    var body: some View {
        
        if let image = image {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(ContainerRelativeShape())
        } else {
            Image.person
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.customLightGray)
                .clipShape(ContainerRelativeShape())
        }
    }
}

struct PersonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonImageView(image: nil)
    }
}
