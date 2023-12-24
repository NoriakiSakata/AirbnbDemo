//
//  ExploreView.swift
//  AirbnbDemo
//
//  Created by 坂田徳明 on 2023/12/24.
//

import Foundation
import SwiftUI


/// explore screen
struct ExploreView: View {
    let places = [
        Place(id: 1, title: "Place 1", company: "Japan", city: "Fukuoka", rating: 4.5, price: 50000, spot: "Lake views", images: ["place1"]),
        Place(id: 2, title: "Place 2", company: "Japan", city: "Fukuoka", rating: 4.5, price: 50000, spot: "Lake views", images: ["place2"]),
        Place(id: 3, title: "Place 3", company: "Japan", city: "Fukuoka", rating: 4.5, price: 50000, spot: "Lake views", images: ["place3"]),
        Place(id: 4, title: "Place 4", company: "Japan", city: "Fukuoka", rating: 4.5, price: 50000, spot: "Lake views",images: ["place4"] ),
        Place(id: 5, title: "Place 5", company: "Japan", city: "Fukuoka", rating: 4.5, price: 50000, spot: "Lake views", images: ["place1"]),
    ]
    var body: some View {
        VStack {
            HStack{
                SearchField()
                FilterButton()
            }.padding(.horizontal, 24.0)
            
            
        List(places) { place in
                PlaceCard(place: place)
        }.listStyle(.inset).padding(.horizontal, 8.0)

        }
        
    }
}

struct PlaceCard: View {
    var place: Place
    var body: some View {
        VStack(alignment: .leading) {
            Image(place.images[0]).resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .aspectRatio(1.0, contentMode: .fill)
                .clipped()
                .cornerRadius(10)
            Text("\(place.city), \(place.company)")
            Text(place.spot)
            Text(String(place.price))
        }
    }
}

/// search field
struct SearchField: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50).shadow(radius: 11).padding(.trailing, 8.0).overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    VStack(alignment: .leading){
                        Text("Where to?").font(.caption)
                        Text("Anywhere・Any week・Add guests").font(.caption2) .foregroundColor(Color.gray)
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 16.0)
            )
    }
}

/// filter button
struct FilterButton: View{
    var body: some View{
        Circle()
            .stroke(.gray)
            .frame(width: 35, height: 35).overlay(
                Image(systemName: "slider.horizontal.3")
            )
    }
}
#Preview {
    ContentView()
}
