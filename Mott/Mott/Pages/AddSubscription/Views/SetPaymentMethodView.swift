//
//  SetPaymentMethodView.swift
//  Mott
//
//  Created by jiyeon on 2022/11/03.
//

import UIKit

import SnapKit

class SetPaymentMethodView: UIView {
    
    // MARK: UI
    
    let paymentMethodLabel = UILabel().then {
        $0.text = "결제 방법"
    }
    
    let paymentMethodSegmentedControl = UISegmentedControl(
        items: Subscription.PaymentMethod.allCases.map { $0.toString }
    ).then {
        $0.selectedSegmentIndex = 0
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
        self.addSubview(paymentMethodLabel)
        self.addSubview(paymentMethodSegmentedControl)
        
        // 제약사항 설정
        paymentMethodLabel.snp.makeConstraints {
            $0.left.equalToSuperview().inset(5)
            $0.centerY.equalToSuperview()
        }
        
        paymentMethodSegmentedControl.snp.makeConstraints {
            $0.right.equalToSuperview().inset(5)
            $0.centerY.equalToSuperview()
        }
    }
    
}

