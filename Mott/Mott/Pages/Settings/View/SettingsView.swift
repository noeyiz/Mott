//
//  SettingsView.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

import SnapKit
import Then

class SettingsView: UIView {
    
    // MARK: UI
    
    let titleLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 30, weight: .black)
        $0.numberOfLines = 2
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
        self.backgroundColor = .systemBackground
        
        // 서브 뷰 추가
        self.addSubview(titleLabel)
        
        // 제약 사항 설정
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(70)
            $0.left.right.equalToSuperview().inset(20)
        }
    }
    
}
