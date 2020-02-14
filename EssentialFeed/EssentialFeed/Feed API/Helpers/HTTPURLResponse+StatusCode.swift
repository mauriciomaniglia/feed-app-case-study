//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Mauricio Cesar Maniglia Junior on 04/02/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
