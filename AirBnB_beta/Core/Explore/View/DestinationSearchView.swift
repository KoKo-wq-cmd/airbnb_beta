//
//  DestinationSearchView.swift
//  AirBnB_beta
//
//  Created by Kostya on 25/07/2024.
//

import SwiftUI


enum DestinationSearchOptions {
    case location
    case dates
    case guests
}


struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    @State private var inputData: String = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var guestCounter = 0
    
    var body: some View {
        VStack {
            //Upper Buttons
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    } label: {
                        Text("Clear")
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            //Where to
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedView(title: "Where", description: "Add destination", textInputData: $inputData)
                }
        
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location}
            }
            //Spacer(minLength: 20)
            //Date selection view
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When is your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                            .onTapGesture(count: 2, perform: { })
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                            .onTapGesture(count: 2, perform: { })
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedView(title: "When", description: "Add dates", textInputData: $inputData)
                }
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates}
                }
            //Spacer(minLength: 10)
            //guest selection view
            VStack(alignment:.leading) {
                if selectedOption == .guests {
                    Text("Who is coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper {
                        Text("\(guestCounter) Adults")
                    } onIncrement: {
                        guestCounter += 1
                    } onDecrement: {
                        guard guestCounter > 0 else { return }
                        guestCounter -= 1
                    }
                
                } else {
                    CollapsedView(title: "Who", description: "Add guests", textInputData: $inputData)
                }
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
            }
            Spacer()
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.gray.opacity(0.2))
        
//        HStack {
//            VStack {
//                Image(systemName: "magnifyingglass")
//                Text("Explore")
//            }
//            Spacer()
//            VStack {
//                Image(systemName: "heart.fill")
//                Text("Wishlists")
//            }
//            Spacer()
//            VStack {
//                Image(systemName: "person.crop.circle.fill")
//                Text("Profile")
//                }
//        }
//        //.padding(.top)
//        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 5)
//        .padding()
//        .imageScale(.large)
//        .foregroundStyle(.gray)

    }
}

#Preview {
    DestinationSearchView(show: .constant(false),
                          viewModel: ExploreViewModel(service:            ExploreService()))
}

struct CollapseDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            //.frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CollapsedView: View {
    let title: String
    let description: String
    //@State var fieldDescription: String
    @Binding var textInputData: String
    
    var body: some View {
        VStack {
            HStack {
                TextField(title, text: $textInputData)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}

