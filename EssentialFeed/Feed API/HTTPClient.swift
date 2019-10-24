//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 24/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func get(from url: URL,  completion: @escaping (HTTPClientResult) -> Void)
}
