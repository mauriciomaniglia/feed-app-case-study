//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by zupper on 02/12/19.
//  Copyright © 2019 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
