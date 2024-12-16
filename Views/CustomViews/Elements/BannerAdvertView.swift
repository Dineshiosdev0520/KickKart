//
//  BannerAdvertView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct BannerAdvertView: View {
    
    
    var imageName: String
    var promoText: String?
    var bannerHeight: CGFloat?
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: bannerHeight ?? 160)
                .cornerRadius(18)
                .padding()
                .shadow(color: .primary.opacity(0.2), radius: 5, x: 0, y: 0)
            
            if let promoText = promoText {
                VStack {
                    Spacer()
                    HStack {
                        Text(promoText)
                            .fontWeight(.black)
                            .padding(6)
                            .background(.red)
                            .foregroundColor(.white)
                            .font(.title)
                            .rotationEffect(Angle(degrees: 20))
                        
                        Spacer()
                    }
                    .padding(30)
                }
                .padding(.vertical, 25)
            }
        }
    }
}


#Preview {
    BannerAdvertView(imageName: "phone")
}
