//
//  BaseViewController.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

class BaseViewController<View: UIView>: UIViewController {
    
    let baseView = View(frame: UIScreen.main.bounds)
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(baseView)
    }
    
}
