//
//  PaginatedScrollViewSettings.swift
//  ScrollViewLoadMoreRefresh
//
//  Created by Tien Dao on 2022-11-18.
//

import UIKit

public struct PaginatedScrollViewSettings {
    
    public var moreLoaderTreshold: CGFloat
    public var reloaderTreshold: CGFloat
    
    public static let defaultSettings = PaginatedScrollViewSettings(moreLoaderTreshold: 50, reloaderTreshold: 140)
}
