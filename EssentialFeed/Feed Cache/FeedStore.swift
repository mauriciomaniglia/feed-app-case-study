//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 18/09/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed:[LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    func retrieve()
}
