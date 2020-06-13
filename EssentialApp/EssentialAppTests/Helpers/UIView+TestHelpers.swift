//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Mauricio Cesar Maniglia Junior on 13/06/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
