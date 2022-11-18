//
//  MoreLoader.swift
//  ScrollViewLoadMoreRefresh
//
//  Created by Tien Dao on 2022-11-18.
//

import SwiftUI

public extension PaginatedScrollViewManager {
    
    struct MoreLoader {
        
        var canLoadMore = true
        
        var threshold: CGFloat = 50
        
        func canLoadMore(for value: CGFloat) -> Bool {
            UIImpactFeedbackGenerator(style: .soft).impactOccurred()
            return canLoadMore
        }
    }
}
