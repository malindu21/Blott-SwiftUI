//
//  GenerateAddressModel.swift
//  Blott
//
//  Created by Doc990 App on 2024-01-05.
//

import Foundation

    struct GenerateAddressModel: Codable {
        let postcode: String
        let latitude: Double
        let longitude: Double
        let formatted_address: [String]
        let thoroughfare: String
        let building_name: String
        let sub_building_name: String
        let sub_building_number: String
        let building_number: String
        let line_1: String
        let line_2: String
        let line_3: String
        let line_4: String
        let locality: String
        let town_or_city: String
        let county: String
        let district: String
        let country: String
        let residential: Bool

        enum CodingKeys: String, CodingKey {
            case postcode, latitude, longitude, formatted_address, thoroughfare, building_name, sub_building_name, sub_building_number, building_number, line_1, line_2, line_3, line_4, locality, town_or_city, county, district, country, residential
        }
    }

