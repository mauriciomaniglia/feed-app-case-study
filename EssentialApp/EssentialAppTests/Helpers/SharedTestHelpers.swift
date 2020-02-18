//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Mauricio Cesar Maniglia Junior on 15/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
    
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func uniqueFeed() -> [FeedImage] {
    return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
}
