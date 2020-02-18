//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 18/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
