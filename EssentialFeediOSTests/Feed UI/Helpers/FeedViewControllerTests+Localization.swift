//
//  FeedViewControllerTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Mauricio Maniglia on 24/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation
import XCTest
import EssentialFeediOS

extension FeedUIIntegrationTests {
   func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
       let table = "Feed"
       let bundle = Bundle(for: FeedViewController.self)
       let value = bundle.localizedString(forKey: key, value: nil, table: table)
       if value == key {
           XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
       }
       return value
   }
}
