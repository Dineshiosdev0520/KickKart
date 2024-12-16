//
//  LatestView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct LatestView: View {
    
    @StateObject var viewModel = LatestViewModel()
    
    var products: [Product]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    BannerAdvertView(imageName: "appbanner", promoText: "-50% OFF!")
                    CustomSubtitleView(text: "Products")
                    VerticalProductGridView(viewModel.columns, products)
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}
#Preview {
    LatestView(products: CoreDataManager.shared.products)
}
