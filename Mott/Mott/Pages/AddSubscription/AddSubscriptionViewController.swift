//
//  AddSubscriptionViewController.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

class AddSubscriptionViewController: BaseViewController<AddSubscriptionView> {
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.baseView.titleLabel.text = "구독 항목 추가"
    }
    
}
