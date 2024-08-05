//
//  ProfileOptionRawView.swift
//  AirBnB_beta
//
//  Created by Kostya on 28/07/2024.
//

import SwiftUI

struct ProfileOptionRawView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                Spacer()
                Image(systemName:"chevron.right")
            }
            .padding()
            .fontWeight(.semibold)
        }
        
    }
}


#Preview {
    ProfileOptionRawView(imageName: "gear", title: "Settngs")
}
