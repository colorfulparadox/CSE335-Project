//
//  SettingsSheet.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/28/25.
//

import SwiftUI

struct SettingsSheet: View {
    @State private var notificationsEnabled: Bool = true
    @State private var maxDistance: Double = 32
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Toggle("Notifications", isOn: $notificationsEnabled)
                
                HStack {
                    Text("Max Distance")
                    Spacer()
                    Text("\(maxDistance) miles")
                        .padding(8)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                }
            }
            .padding()
        }
        .navigationTitle("User Settings")
    }
}

#Preview {
    SettingsSheet()
}
