//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Mauricio Cesar Maniglia Junior on 31/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import XCTest

class URLSessionHTTPClient {
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func get(from url: URL) {
        session.dataTask(with: url) { (_, _, _) in }
    }
}

class URLSessionHTTPClientTests: XCTestCase {
    
    func test_getFromURL_createDataTaskWithURL() {
        let url = URL(string: "http://any-url.com")!
        let session = URLSessionSpy()
        let sut = URLSessionHTTPClient(session: session)
        
        sut.get(from: url)
        
        XCTAssertEqual(session.receivedURLs, [url])
    }
    
    //MARK: - Helpers
    
    class URLSessionSpy: URLSession {
        var receivedURLs = [URL]()
        
        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            receivedURLs.append(url)
            
            return FakeURLSessionDataTask()
        }
    }
    
    class FakeURLSessionDataTask: URLSessionDataTask {}
}
