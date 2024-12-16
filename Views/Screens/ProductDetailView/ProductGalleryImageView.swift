//
//  ProductGalleryImageView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductGalleryImageView: View {
    
    var imageName: String
    var isImageSelected: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(18)
                .frame(width: 80, height: 80)
                .overlay(RoundedRectangle(cornerRadius: 18)
                    .strokeBorder(.secondary, lineWidth: isImageSelected ? 1 : 0))
            
            WebImage(url: URL(string: imageName))
                .resizable()
                .indicator(.activity)
                .frame(width: 80, height: 80)
                .cornerRadius(18)
                .scaledToFit()
                .rotationEffect(Angle(degrees: isImageSelected ? 6 : 0))
                .shadow(color: isImageSelected ? .primary.opacity(0.2) : .primary.opacity(0.1), radius: isImageSelected ? 7 : 5, x: 0, y: 0)
        }
    }
}

struct SingleProductGalleryView: View {
    
    var product: Product
    @Binding var selectedImageIndex: Int
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(100))]) {
                ForEach(product.imageGallery.indices, id: \.self) { index in
                    ProductGalleryImageView(imageName: product.imageGallery[index], isImageSelected: selectedImageIndex == index ? true : false)
                        .padding(12)
                        .onTapGesture {
                            withAnimation {
                                selectedImageIndex = index
                            }
                        }
                }
            }
        }
    }
}

struct SizePickerView: View {
    
    var sizes: [Int]
    @Binding var size: Int
    
    var body: some View {
        HStack {
            Text("Pick Size")
            
            Spacer()
            
            Picker("Sizes", selection: $size) {
                ForEach(sizes, id: \.self) { size in
                    Text("\(size)")
                }
            }
            .pickerStyle(.menu)
            .padding(.horizontal, 32)
            .background(Color(uiColor: .secondarySystemFill))
            .cornerRadius(8)
        }
    }
}


