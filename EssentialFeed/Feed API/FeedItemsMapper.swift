//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 24/08/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
    
    var item: FeedItem {
        return FeedItem(id: id, description: description, location: location, imageURL: image)
    }
}

internal final class FeedItemsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
