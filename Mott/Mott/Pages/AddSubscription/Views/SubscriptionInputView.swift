//
//  SubscriptionInputView.swift
//  Mott
//
//  Created by jiyeon on 2022/11/03.
//

import UIKit

import SnapKit

class SubscriptionInputView: UIView {
    
    // MARK: UI
    
    let itemStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 5
    }
    
    let itemImage = UIImageView().then {
        $0.layer.cornerRadius = 5
        $0.isHidden = true
    }
    
    let itemLabel = UILabel().then {
        $0.text = "종류 선택"
        $0.textColor = .systemGray2
    }
    
    let itemButton = UIButton().then {
        $0.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        $0.tintColor = .systemGray2
    }
    
    let recurrentCycleLabel = UILabel().then {
        $0.text = "반복"
        $0.textColor = .systemGray2
    }
    
    let recurrentCycleButton = UIButton().then {
        $0.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        $0.tintColor = .systemGray2
    }
    
    let priceTextField = UITextField().then {
        $0.attributedPlaceholder = NSAttributedString(
            string: "금액 입력",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray2]
        )
        $0.keyboardType = .numberPad
    }
    
    let currencyUnitLabel = UILabel().then {
        $0.text = "(원)"
        $0.textColor = .systemGray2
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
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray.cgColor
        
        // 서브뷰 추가
        itemStackView.addArrangedSubview(itemImage)
        itemStackView.addArrangedSubview(itemLabel)
        self.addSubview(itemStackView)
        self.addSubview(itemButton)
        self.addSubview(recurrentCycleLabel)
        self.addSubview(recurrentCycleButton)
        self.addSubview(priceTextField)
        self.addSubview(currencyUnitLabel)
        
        // 제약사항 설정
        itemStackView.snp.makeConstraints {
            $0.top.left.equalToSuperview().inset(20)
            $0.right.equalTo(itemButton.snp.left)
        }
        
        itemImage.snp.makeConstraints {
            $0.width.height.equalTo(30)
        }
        
        itemButton.snp.makeConstraints {
            $0.width.height.equalTo(20)
            $0.right.equalToSuperview().inset(20)
            $0.centerY.equalTo(itemStackView)
        }
        
        recurrentCycleLabel.snp.makeConstraints {
            $0.top.equalTo(itemStackView.snp.bottom).offset(40)
            $0.left.equalToSuperview().inset(20)
        }
        
        recurrentCycleButton.snp.makeConstraints {
            $0.right.equalToSuperview().inset(20)
            $0.centerY.equalTo(recurrentCycleLabel)
        }
        
        priceTextField.snp.makeConstraints {
            $0.top.equalTo(recurrentCycleLabel.snp.bottom).offset(40)
            $0.left.right.bottom.equalToSuperview().inset(20)
        }
        
        currencyUnitLabel.snp.makeConstraints {
            $0.right.equalToSuperview().inset(20)
            $0.centerY.equalTo(priceTextField)
        }
    }
    
}
