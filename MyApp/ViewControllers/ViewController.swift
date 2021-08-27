//
//  ViewController.swift
//  MyApp
//
//  Created by abedalkareem omreyh on 5/17/19.
//  Copyright © 2019 abedalkareem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var resultLabel: UILabel!
  
  let myMath = MyMath()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myMath.addchangeListener { [unowned self] number in
      self.resultLabel.text = "\(number)"
    }
  }

  @IBAction func sum(_ sender: Any) {
    myMath.sum(x: 9, y: 10)
  }

  @IBAction func minusOne(_ sender: Any) {
    myMath.minusOne()
  }
  
}

