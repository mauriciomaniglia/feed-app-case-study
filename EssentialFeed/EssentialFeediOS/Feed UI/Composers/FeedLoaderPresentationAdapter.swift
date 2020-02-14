//
//  FeedLoaderPresentationAdapter.swift
//  EssentialFeediOS
//
//  Created by Mauricio Maniglia on 26/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import EssentialFeed

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
   private let feedLoader: FeedLoader
   var presenter: FeedPresenter?

   init(feedLoader: FeedLoader) {
       self.feedLoader = feedLoader
   }

   func didRequestFeedRefresh() {
       presenter?.didStartLoadingFeed()

       feedLoader.load { [weak self] result in
           switch result {
           case let .success(feed):
               self?.presenter?.didFinishLoadingFeed(with: feed)

           case let .failure(error):
               self?.presenter?.didFinishLoadingFeed(with: error)
           }
       }
   }
}
