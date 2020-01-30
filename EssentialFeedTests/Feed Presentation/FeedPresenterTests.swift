//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Mauricio Maniglia on 30/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import XCTest

final class FeedPresenter {
   init(view: Any) {

   }
}

class FeedPresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()

        _ = FeedPresenter(view: view)

        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }

    // MARK: - Helpers

    private class ViewSpy {
        let messages = [Any]()
    }

}
