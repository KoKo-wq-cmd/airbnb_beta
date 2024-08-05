//
//  Regions.swift
//  AirBnB_beta
//
//  Created by Kostya on 03/08/2024.
//

import CoreLocation

extension CLLocationCoordinate2D {
    static var sanFrancisco = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    static var losAngeles = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
    static var newYork = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
    static var london = CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)
    static var paris = CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
    static var tokio = CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917)
    static var berlin = CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050)
    static var sydney = CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093)
    static var seoul = CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780)
    static var rome = CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964)
    
    
    static func regionForCity(_ name: String) -> CLLocationCoordinate2D? {
        switch name {
        case "Los Angeles": return .losAngeles
        case "San Francisco": return .sanFrancisco
        case "New York": return .newYork
        case "London": return .london
        case "Paris": return .paris
        case "Tokyo", "Tokio": return .tokio
        case "Berlin": return .berlin
        case "Sydney": return .sydney
        case "Seoul": return .seoul
        case "Rome": return .rome
        default:
            return nil
        }
    }
    
    
}

