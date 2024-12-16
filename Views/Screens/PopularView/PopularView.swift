//
//  PopularView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct PopularView: View {
    
    @StateObject var viewModel = PopularViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    CustomSubtitleView(text: "Shoes")
                    HorizontalProductGridView(viewModel.rows, viewModel.shoesCategory)
                    
                    CustomSubtitleView(text: "Hats")
                    VerticalProductGridView(viewModel.columns, viewModel.hatsCategory)
                    
                    CustomSubtitleView(text: "Weights")
                    HorizontalProductGridView(viewModel.rows, viewModel.weightsCategory)
                }
                .navigationTitle("Popular")
                .task {
                    await viewModel.setCategories()
                }
            }
        }
    }
}

#Preview {
    PopularView()
}
