//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 09/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
