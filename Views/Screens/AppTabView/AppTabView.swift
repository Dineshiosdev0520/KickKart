//
//  AppTabView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct AppTabView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var cachedProducts: FetchedResults<CachedProduct>
    @FetchRequest(sortDescriptors: []) var cart: FetchedResults<Cart>
    
    @State private var products = [Product]()
    @State private var isShowingLoadingError = false
    @State private var isShowingLoadingScreen = true
    
    var body: some View {
        ZStack {
            TabView {
                LatestView(products: products)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
                PopularView()
                    .tabItem {
                        Label("Popular", systemImage: "bolt.shield.fill")
                    }
                
                CartView()
                    .tabItem {
                        Label("Cart", systemImage: "cart.fill")
                    }
                    .badge(cart.count)
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
                
                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass.circle.fill")
                    }
            }
            if isShowingLoadingScreen {
                LoadingView()
            }
        }
        .task {
            do {
                try await CoreDataManager.shared.getCachedProductsReady(cachedProducts, moc)
                CoreDataManager.shared.getCartProductsReady(cart, moc)
                products = CoreDataManager.shared.products
                isShowingLoadingScreen = false
            } catch {
                isShowingLoadingError = true
                isShowingLoadingScreen = false
            }
        }
        .alert("Error", isPresented: $isShowingLoadingError) {
            Button("OK", action: {})
        } message: {
            Text("There was a problem loading products from the server. Please check your internet connection, restart the app and try again.")
        }

    }
}

#Preview {
    AppTabView()
}
