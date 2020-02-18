//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 18/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
