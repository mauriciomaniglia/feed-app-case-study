//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Mauricio Maniglia on 29/01/20.
//  Copyright © 2020 Mauricio Cesar Maniglia Junior. All rights reserved.
//

import UIKit

public final class ErrorView: UIView {
   @IBOutlet private var label: UILabel!

   public var message: String? {
       get { return label.text }
       set { label.text = newValue }
   }

   public override func awakeFromNib() {
       super.awakeFromNib()

       label.text = nil
   }
}
