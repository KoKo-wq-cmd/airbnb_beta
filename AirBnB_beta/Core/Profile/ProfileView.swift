//
//  ProfileView.swift
//  AirBnB_beta
//
//  Created by Kostya on 28/07/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                //Profile login view
                VStack(alignment: .leading, spacing: 32) {
                    VStack(alignment:.leading, spacing: 8) {
                        Text("Log in to start planning your next trip.")
                    }
                    .padding()
                    
                    NavigationLink(destination: RegistrationView()) {
                        Text("Log in")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 50, alignment: .center)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    HStack {
                        Text("Do not have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .font(.caption)
                }
                
                
                VStack(spacing: 2) {
                    ProfileOptionRawView(imageName: "gear", title: "Settngs")
                    ProfileOptionRawView(imageName: "accessibility", title: "Accessibility")
                    ProfileOptionRawView(imageName: "questionmark.circle", title: "Visit the Help Center")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Profile")
            //.background(Color.black)
        }
        
    }
    
}


#Preview {
    ProfileView()
}

