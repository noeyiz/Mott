//
//  MainView.swift
//  Mott
//
//  Created by jiyeon on 2022/10/31.
//

import UIKit

import SnapKit
import Then

class MainView: UIView {
    
    // MARK: UI
    
    /// 타이틀을 그려주는 라벨
    let titleLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 30, weight: .black)
        $0.numberOfLines = 2
    }
    
    /// 구독 항목을 그려주는 컬렉션뷰
    let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    ).then {
        let layout = UICollectionViewFlowLayout()
        $0.collectionViewLayout = layout
        $0.backgroundColor = .systemGroupedBackground
    }
    
    let addButton = UIButton().then {
        $0.setTitle("", for: .normal)
        $0.setBackgroundImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
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
        self.addSubview(collectionView)
        self.addSubview(addButton)
        
        // 제약 사항 설정
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(70)
            $0.left.right.equalToSuperview().inset(20)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-20)
            $0.left.right.equalToSuperview().inset(20)
            $0.bottom.equalToSuperview().inset(100)
        }
        
        addButton.snp.makeConstraints {
            $0.width.height.equalTo(50)
            $0.right.equalToSuperview().inset(20)
            $0.bottom.equalToSuperview().inset(120)
        }
    }
    
}
