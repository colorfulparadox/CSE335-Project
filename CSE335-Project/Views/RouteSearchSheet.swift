//
//  RouteSearchSheet.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/28/25.
//

import SwiftUI

struct RouteSearchSheet: View {
    @State var search: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Search For Route")
                    .font(.headline)
                    .padding()
                    .padding(.bottom, 0)
                HStack {
                    TextField("Search", text: $search)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {
                    }) {
                        Image(systemName: "arrow.right.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 30)
                            .foregroundColor(.blue)
                    }
                }
                
            }
            .padding()
                
            Form {
                Section(header: Text("Routes")) {
                    List {
                        ForEach(0..<15, id: \.self) { _ in
                            RouteButton()
                        }
                    }
                }
            }
        }
        .navigationTitle("Route Search")
    }
}


struct RouteButton: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Station Name")
                        .font(.headline)
                    Text("Address: 9999 N Street Dr, Anytown, USA")
                        .font(.caption)
                    Text("Distance: 1.5 miles")
                        .font(.caption)
                }
                //.padding()
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 20)
                        .foregroundColor(.green)
                    
                }
            }
        }
        .padding()
    }
}


#Preview {
    RouteSearchSheet()
}
