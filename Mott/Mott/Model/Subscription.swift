//
//  Subscription.swift
//  Mott
//
//  Created by jiyeon on 2022/11/03.
//

import Foundation

struct Subscription: Codable {
    var item: SubscriptionItem
    var price: Int
    var paymentMethod: PaymentMethod
    var recurrentCycle: RecurrentCycle
    var isNotifying: Bool
}

extension Subscription {
    
    enum SubscriptionItem: Codable, CaseIterable {
        case netfilx
        case youtubePremium

        var toString: String {
            switch self {
            case .netfilx: return "Netfilx"
            case .youtubePremium: return "YoutubePremium"
            }
        }
    }

    enum PaymentMethod: Codable, CaseIterable {
        case directPayment
        case remittance

        var toString: String {
            switch self {
            case .directPayment: return "결제"
            case .remittance: return "송금"
            }
        }
    }

    enum RecurrentCycle: Codable {
        case month(day: String)
        case year(month: Int, day: Int)

        var toString: String {
            switch self {
            case let .month(day): return "매월 \(day)일"
            case let .year(month, day): return "매년 \(month)월 \(day)일"
            }
        }
    }
    
}
