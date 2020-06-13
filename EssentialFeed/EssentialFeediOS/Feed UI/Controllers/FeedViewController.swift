//
//  FeedViewController.swift
//  EssentialFeediOS
//
//  Created by zupper on 24/11/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit
import EssentialFeed

public protocol FeedViewControllerDelegate {
   func didRequestFeedRefresh()
}

public final class FeedViewController: UITableViewController, UITableViewDataSourcePrefetching, FeedLoadingView, FeedErrorView {
    @IBOutlet private(set) public var errorView: ErrorView?
    
    public var delegate: FeedViewControllerDelegate?
    
    private var tableModel = [FeedImageCellController]() {
        didSet { tableView.reloadData() }
    }        
        
    private var cellControllers = [IndexPath: FeedImageCellController]()
    private var loadingControllers = [IndexPath: FeedImageCellController]()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
                
        refresh()
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        tableView.sizeTableHeaderToFit()
    }
    
    public func display(_ cellControllers: [FeedImageCellController]) {
        loadingControllers = [:]
        tableModel = cellControllers
     }
    
    @IBAction private func refresh() {
         delegate?.didRequestFeedRefresh()
     }
    
    public func display(_ viewModel: FeedLoadingViewModel) {
        refreshControl?.update(isRefreshing: viewModel.isLoading)
     }
    
    public func display(_ viewModel: FeedErrorViewModel) {
         errorView?.message = viewModel.message
     }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellController(forRowAt: indexPath).view(in: tableView)
    }
    
    public override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {        
        cancelCellControllerLoad(forRowAt: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        indexPaths.forEach { indexPath in
            cellController(forRowAt: indexPath).preload()
        }
    }
    
    public func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAt indexPaths: [IndexPath]) {
        indexPaths.forEach(cancelCellControllerLoad)
    }
    
    private func cellController(forRowAt indexPath: IndexPath) -> FeedImageCellController {
        let controller = tableModel[indexPath.row]
        loadingControllers[indexPath] = controller
        return controller
    }        
    
    private func cancelCellControllerLoad(forRowAt indexPath: IndexPath) {
        loadingControllers[indexPath]?.cancelLoad()
        loadingControllers[indexPath] = nil
    }
}
