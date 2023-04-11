//
//  WeatherModel.swift
//  Weather
//
//  Created by Mac OS on 29.03.2023.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701:
            return "cloud.fog.circle"
        case 711:
            return "cloud.smoke"
        case 721:
            return "cloud.haze"
        case 731:
            return "sun.dust"
        case 741:
            return "cloud.fog"
        case 751:
            return "tornado"
        case 761:
            return "sun.dust"
        case 771:
            return "cloud"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "error"
        }
    }
}
