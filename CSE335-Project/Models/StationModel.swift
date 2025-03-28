//
//  StationModel.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/28/25.
//

class StationModel {
    var rating: Double = 0.0
    var position: (Double, Double) = (0.0, 0.0)
    var open: Bool = false
    var icon: String = ""
}

class GasStation : StationModel {
    var pricePerGallon: Double = 0.0
}

class Charger : StationModel {
    var pricePerHour: Double = 0.0
}
