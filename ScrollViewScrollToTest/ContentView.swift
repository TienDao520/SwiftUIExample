//
//  ContentView.swift
//  ScrollViewScrollToTest
//
//  Created by Tien Dao on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    @State private var scrollTarget: Int?

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ScrollViewReader { (proxy: ScrollViewProxy) in
                        VStack {
                            ForEach(0..<100) { i in
                                Text("Row \(i)")
                                    .frame(height: 40)
                                    .id(i) // Uniquely identify each row in the scrollview by its index
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        // Scroll to the desired row when the @State variable changes
                        .onChange(of: scrollTarget) { target in
                            if let target = target {
                                scrollTarget = nil

                                withAnimation {
                                    proxy.scrollTo(target, anchor: .center)
                                }
                            }
                        }
                        
                    }
                    
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) { i in
                            Button("Row \(i * 10)") {
                                // Store the desired scroll index
                                scrollTarget = i * 10

                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Scroll Example")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
