//
//  TabBar.swift
//  Tinder
//
//  Created by Sathish on 23/10/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem { 
                    Image(systemName: "flame")
                        .renderingMode(.template)
                }
                .tag(0)
            
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass").renderingMode(.template) }
                .tag(1)
            Text("Message View")
                .tabItem { Image(systemName: "bubble")
                        .renderingMode(.template)
                }
                .tag(2)
            Text("Profile View")
                .tabItem { Image(systemName: "person") .renderingMode(.template) }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
