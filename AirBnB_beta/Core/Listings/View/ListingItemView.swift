//
//  ListingItemView.swift
//  AirBnB_beta
//
//  Created by Kostya on 21/07/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    var body: some View {
        VStack(spacing: 8) {
            //Images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - Nov 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                        
                        Text("night")
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text(String(format: "%.2f", listing.rating))
                    
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}


#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
