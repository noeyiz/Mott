//
//  SettingsViewController.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

class SettingsViewController: BaseViewController<SettingsView> {
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.baseView.titleLabel.text = "설정"
    }
    
}
