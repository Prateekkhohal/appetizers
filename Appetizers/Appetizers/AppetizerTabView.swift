//
//  ContentView.swift
//  Appetizers
//
//  Created by Prateek Kumar on 30/11/23.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order:Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Orders", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
