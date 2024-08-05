//
//  registrationView.swift
//  AirBnB_beta
//
//  Created by Kostya on 04/08/2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State var phoneNumber = ""
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                Spacer()
                TextField("first name", text: $firstName)
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(height: 40)
                    .shadow(radius: 10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                
                Divider()
                
                TextField("last name", text: $lastName)
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(height: 40)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                
                Divider()
                
                TextField("email", text: $email)
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(height: 40)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                
                TextField("phone number", text: $phoneNumber)
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(height: 40)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                Spacer()
                Button() {
                    print("registering ...")
                } label: {
                    Text("Register")
                        .foregroundStyle(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
            }
            .padding()
            .navigationTitle("Registration")
        }
    }
}


#Preview {
    RegistrationView()
}
