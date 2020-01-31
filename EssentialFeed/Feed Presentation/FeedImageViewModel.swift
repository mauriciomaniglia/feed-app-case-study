//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Mauricio Maniglia on 31/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    public var hasLocation: Bool {
        return location != nil
    }
}
