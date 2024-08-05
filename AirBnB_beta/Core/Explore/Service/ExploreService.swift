//
//  ExploreService.swift
//  AirBnB_beta
//
//  Created by Kostya on 03/08/2024.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
    
}
