//
//  ProductGalleryImageView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductImageView: View {
    
    var imageName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                .aspectRatio(contentMode: .fill)
                .cornerRadius(18)
            
            WebImage(url: URL(string: imageName))
                .resizable()
                .indicator(.activity)
                .cornerRadius(18)
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .shadow(color: .primary.opacity(0.3), radius: 3, x: 0, y: 0)
        }
    }
}

