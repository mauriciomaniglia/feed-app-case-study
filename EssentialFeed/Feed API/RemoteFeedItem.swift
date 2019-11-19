//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 24/09/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
    
    var item: FeedImage {
        return FeedImage(id: id, description: description, location: location, url: image)
    }
}
