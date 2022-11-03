//
//  AddSubscriptionView.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

import SnapKit
import Then

class AddSubscriptionView: UIView {
    
    // MARK: UI
    
    /// 타이틀을 그려주는 라벨
    let titleLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 25, weight: .black)
        $0.numberOfLines = 2
    }
    
    /// 구독 항목, 반복 주기, 금액을 입력하는 뷰
    let subscriptionInputView = SubscriptionInputView()
    
    /// 결제 방법을 선택하는 뷰
    let setPaymentMethodView = SetPaymentMethodView()
    
    /// 푸시 알림 여부를 선택하는 뷰
    let setPushNotificationView = SetPushNotificationView()
    
    let addButton = UIButton().then {
        $0.setTitle("확인", for: .normal)
        $0.setTitleColor(.systemGray, for: .disabled)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemGray5
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        $0.layer.cornerRadius = 5
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

        // 서브뷰 추가
        self.addSubview(titleLabel)
        self.addSubview(subscriptionInputView)
        self.addSubview(setPaymentMethodView)
        self.addSubview(setPushNotificationView)
        self.addSubview(addButton)
        
        // 제약사항 설정
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(100)
            $0.left.right.equalToSuperview().inset(20)
        }
        
        subscriptionInputView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(150)
            $0.left.right.equalToSuperview().inset(20)
        }
        
        setPaymentMethodView.snp.makeConstraints {
            $0.top.equalTo(subscriptionInputView.snp.bottom)
            $0.left.right.equalToSuperview().inset(25)
            $0.height.equalTo(50)
        }

        setPushNotificationView.snp.makeConstraints {
            $0.top.equalTo(setPaymentMethodView.snp.bottom)
            $0.left.right.equalToSuperview().inset(25)
            $0.height.equalTo(50)
        }
        
        addButton.snp.makeConstraints {
            $0.top.equalTo(setPushNotificationView.snp.bottom).offset(20)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(50)
        }
    }
    
}

extension AddSubscriptionView {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
}
