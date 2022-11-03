//
//  MainViewController.swift
//  Mott
//
//  Created by jiyeon on 2022/10/30.
//

import UIKit

import RxCocoa
import RxSwift

class MainViewController: BaseViewController<MainView> {

    // MARK: Properties
    
    var disposeBag = DisposeBag()
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.baseView.titleLabel.text = "나의\n구독 목록✨"
        bind()
    }

    // MARK: Binding
    
    func bind() {
        baseView.addButton.rx.tap
            .subscribe(onNext: {
                let addSubscriptionViewController = AddSubscriptionViewController()
                // 뷰컨트롤러 이동
                self.navigationController?.pushViewController(addSubscriptionViewController, animated: true)
            }).disposed(by: disposeBag)
    }
    
}

