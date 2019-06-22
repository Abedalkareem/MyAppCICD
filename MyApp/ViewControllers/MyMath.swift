//
//  MyMath.swift
//  MyApp
//
//  Created by abedalkareem omreyh on 5/17/19.
//  Copyright © 2019 abedalkareem. All rights reserved.
//

import UIKit

class MyMath {

  typealias ChangeListener = (Int) -> Void

  private var changeListener: ChangeListener?

  var result: Int? {
    willSet {
      changeListener?(newValue ?? 0)
    }
  }

  func addchangeListener(_ changeListener: @escaping ChangeListener) {
    self.changeListener = changeListener
  }

  func sum(x: Int, y: Int) {
    result = x + y
  }

  func minusOne() {
    guard let result = result else {
      self.result = 0
      return
    }
    self.result = result - 1
  }

}
