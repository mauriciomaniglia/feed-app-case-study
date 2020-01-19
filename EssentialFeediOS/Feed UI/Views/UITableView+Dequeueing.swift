//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Mauricio Maniglia on 19/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit

 extension UITableView {
   func dequeueReusableCell<T: UITableViewCell>() -> T {
       let identifier = String(describing: T.self)
       return dequeueReusableCell(withIdentifier: identifier) as! T
   }
}
