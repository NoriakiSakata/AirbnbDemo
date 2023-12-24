//
//  Place.swift
//  AirbnbDemo
//
//  Created by 坂田徳明 on 2023/12/24.
//
import Foundation

struct Place: Identifiable {
    var id: Int
    var title: String
    var company: String
    var city: String
    var rating: Double
    var price: Int
    var spot: String
    var images: [String]
    
    init(id: Int, title: String, company: String, city: String, rating: Double, price: Int, spot: String, images: [String]) {
        self.id = id
        self.title = title
        self.company = company
        self.city = city
        self.rating = rating
        self.price = price
        self.spot = spot
        self.images = images
    }
}
