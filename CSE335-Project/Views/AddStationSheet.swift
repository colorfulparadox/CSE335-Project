//
//  AddStationSheet.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/28/25.
//

import SwiftUI


enum StationType: String, CaseIterable {
    case Gas = "Gas"
    case Electric = "Electric"
}

struct AddStationSheet: View {
    @State var stationName: String = ""
    @State var stationType: StationType = .Gas
    @State var location: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                VStack(alignment: .leading) {
                    Text("Name:")
                        .font(.headline)
                    TextField("Station Name", text: $stationName)
                }
                VStack(alignment: .leading) {
                    Picker(selection: $stationType, label: Text("Pump Type").font(.headline)) {
                        ForEach(StationType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    
                }
                VStack(alignment: .leading) {
                    Text("Location:")
                        .font(.headline)
                    TextField("Address", text: $stationName)
                }
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Add Station")
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }

            }
        }
        .navigationTitle("Add Station")
    }
}

#Preview {
    AddStationSheet()
}
