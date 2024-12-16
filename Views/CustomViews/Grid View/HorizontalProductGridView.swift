//
//  HorizontalProductGridView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct HorizontalProductGridView: View {
    
    var rows: [GridItem]
    var products: [Product]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(products) { product in
                    NavigationLink(destination: ProductDetailView(viewModel: ProductDetailViewModel(product: product))) {
                        CustomGridItemView(gridItemType: .horizontal, product: product)
                            .padding(8)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal)
        }
    }
    
    init(_ rows: [GridItem], _ products: [Product]) {
        self.rows = rows
        self.products = products
    }
}



