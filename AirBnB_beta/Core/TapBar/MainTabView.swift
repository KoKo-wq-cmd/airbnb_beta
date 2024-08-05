//
//  MainTabView.swift
//  AirBnB_beta
//
//  Created by Kostya on 28/07/2024.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart.fill") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.crop.circle") }
        }
    }
}


#Preview {
    MainTabView()
}
