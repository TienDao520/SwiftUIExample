//
//  ContentView.swift
//  ScrollViewLoadMoreTest
//
//  Created by Tien Dao on 2022-11-17.
//

import SwiftUI


struct ContentView: View {
    static var count = 0
  
    @State private var loadMoreNumEnd = 40
    @State private var loadMoreNumStart = 0
    @State private var ScrollToVal = 0
    
    struct CustomText: View {
        let text: String

        var body: some View {
            Text(text)
        }

        init(_ text: String) {
            
            count += 1
            print("Creating a new CustomText \(count)")
            self.text = text
        }
    }
    
    var body: some View {
        Group{
            Button {
    //            var arrayNum : [Int] = []
    //            ForEach(0..<100) {
    //                arrayNum.append($0)
    //            }
                loadMoreNumEnd += 10
//                loadMoreNumStart += 10
//                ScrollToVal += 10
                
            } label: {
                Text("Added 10 more items")
            }
            
            Button {
    //            var arrayNum : [Int] = []
    //            ForEach(0..<100) {
    //                arrayNum.append($0)
    //            }
                loadMoreNumStart += 10
                
            } label: {
                Text("Remove 10 more items")
            }

            ScrollView {
    //            VStack(spacing: 10) {
                ScrollViewReader { value in
                    LazyVStack(spacing: 10) {
                        Button("Jump to #8") {
                            value.scrollTo(ScrollToVal)
                        }
                        .padding()
                        ForEach(loadMoreNumStart..<loadMoreNumEnd, id: \.self) {
                            CustomText("Item \($0)")
                                .font(.title)
                            Image("ironMan")
                                .resizable()
                                .frame(width: 120.0, height: 120.0)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
