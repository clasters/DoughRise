//
//  ContentView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", image: "Home")
                        
                }
            
            HistoryView()
                .tabItem {
                    Label("History", image: "History")
                }
            
            TransactionsView()
                .tabItem {
                    Label("Transactions", image: "Transactions")
                }
            
            GoalsView()
                .tabItem {
                    Label("Goals", image: "Goals")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", image: "Settings")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
