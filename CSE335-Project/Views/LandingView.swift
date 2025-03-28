//
//  LandingView.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/28/25.
//

import SwiftUI
import MapKit



struct LandingView: View {
    var body: some View {
        NavigationStack {
            Map()
                .navigationBarHidden(true)
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                HStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18, height: 18)
                                .foregroundColor(.blue)
                            Text("Route")
                                .font(.headline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LandingView()
}
