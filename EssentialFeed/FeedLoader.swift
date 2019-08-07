//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 06/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

enum FeedLoaderResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (FeedLoaderResult) -> Void)
}
