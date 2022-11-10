//
//  ContentView.swift
//  TabViewTest
//
//  Created by Tien Dao on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            Button {
                selectedTab = 2
            } label: {
                Text("2nd Tab")
            }
            
            TabView(selection: $selectedTab) {
                Text("Home")
                    .tag(1)
                Text("Home2")
                    .tag(2)
                Text("Home3")
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
