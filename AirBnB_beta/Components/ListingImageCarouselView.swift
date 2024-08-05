//
//  ListingImageCarouselView.swift
//  AirBnB_beta
//
//  Created by Kostya on 22/07/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(minHeight: 250)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
