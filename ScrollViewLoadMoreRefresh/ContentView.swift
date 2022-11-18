//
//  ContentView.swift
//  ScrollViewLoadMoreRefresh
//
//  Created by Tien Dao on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    @State private var loadMoreNumEnd = 30
    @State private var loadMoreNumStart = 0

    var body: some View {
        PaginatedScrollView {
            ForEach(loadMoreNumStart..<loadMoreNumEnd, id: \.self) {
                Text("Item: \($0)")
                Image("ironMan")
                    .resizable()
                    .frame(width: 120, height: 150)
            }
            
        }
        .reloadable {
            // call your reload async func
            print("Time to reload")
            loadMoreNumEnd = 30
        }
        .moreLoadable { canLoadMore in
            // call your loadMore async func
//            canLoadMore.wrappedValue = false
            print("Time to load more")
            loadMoreNumEnd += 10
//            loadMoreNumStart += 10
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
