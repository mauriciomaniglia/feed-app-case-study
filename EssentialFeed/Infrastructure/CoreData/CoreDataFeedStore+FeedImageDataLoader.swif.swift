//
//  CoreDataFeedStore+FeedImageDataLoader.swif.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 11/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {

    public func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {

    }

    public func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        completion(.success(.none))
    }

}
