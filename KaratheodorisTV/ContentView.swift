//
//  ContentView.swift
//  KaratheodorisTV
//
//  Created by Angelos Staboulis on 15/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Text("Home")
                }
            Biography()
                .tabItem {
                    Text("Biography")
                }
            Gallery()
                .tabItem {
                    Text("Gallery")
                }
            Publications()
                .tabItem {
                    Text("Publications")
                }
            QuizView()
                .tabItem {
                    Text("Quiz")
                }
        }
    }
}

#Preview {
    ContentView()
}
