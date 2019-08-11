//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Mauricio Cesar Maniglia Junior on 10/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    func load() {}
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTest: XCTestCase {
    
    func test_init_doesNotRequestDataFromULR() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
