//
//  SetNotificationView.swift
//  Mott
//
//  Created by jiyeon on 2022/11/03.
//

import UIKit

import SnapKit

class SetPushNotificationView: UIView {
    
    // MARK: UI
    
    let pushLabel = UILabel().then {
        $0.text = "푸시 알림"
    }
    
    let pushSwitch = UISwitch().then {
        $0.isOn = false
    }
    
    // MARK: Initializing
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configure View
    
    func configureView() {
        // 서브뷰 추가
        self.addSubview(pushLabel)
        self.addSubview(pushSwitch)
        
        // 제약사항 설정
        pushLabel.snp.makeConstraints {
            $0.left.equalToSuperview().inset(5)
            $0.centerY.equalToSuperview()
        }
        
        pushSwitch.snp.makeConstraints {
            $0.right.equalToSuperview().inset(5)
            $0.centerY.equalToSuperview()
        }
    }
    
}

