//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Mauricio Maniglia on 29/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
