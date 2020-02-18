//
//  FeedLoaderCacheDecorator.swift
//  EssentialApp
//
//  Created by Mauricio Cesar Maniglia Junior on 18/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import EssentialFeed

public final class FeedLoaderCacheDecorator: FeedLoader {
    private let decoratee: FeedLoader
    private let cache: FeedCache

    public init(decoratee: FeedLoader, cache: FeedCache) {
        self.decoratee = decoratee
        self.cache = cache
    }

    public func load(completion: @escaping (FeedLoader.Result) -> Void) {
        decoratee.load { [weak self] result in
             if let feed = try? result.get() {
                 self?.cache.saveIgnoringResult(feed)
             }
             completion(result)
         }
    }
}

private extension FeedCache {
   func saveIgnoringResult(_ feed: [FeedImage]) {
       save(feed) { _ in }
   }
}
