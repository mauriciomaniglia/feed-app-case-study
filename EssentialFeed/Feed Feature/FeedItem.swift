//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 06/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
