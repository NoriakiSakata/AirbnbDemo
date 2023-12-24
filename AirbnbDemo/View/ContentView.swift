//
//  ContentView.swift
//  AirbnbDemo
//
//  Created by 坂田徳明 on 2023/12/24.
//

import SwiftUI

struct ContentView: View {
    
   
    
    
    var body: some View {
        TabView {
            ExploreView().tabItem { TabItem(icon: "magnifyingglass", title: "Explore") }
            makeTabItem(icon: "paperplane", title: "Wishlists")
            makeTabItem(icon: "star", title: "Trips")
            makeTabItem(icon: "bubble", title: "Inbox")
            makeTabItem(icon: "person.circle", title: "Profile")
        }
        .accentColor(Color.pink)
       
        
    }
    
    func makeTabItem(icon: String, title: String) -> some View {
        return Text(title)
            .tabItem {
                TabItem(icon: icon, title: title)
            }
    }
}

struct TabItem: View {
    let icon: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
            
                .renderingMode(.template)
            Text(title)
        }
    }
}


#Preview {
    ContentView()
}
