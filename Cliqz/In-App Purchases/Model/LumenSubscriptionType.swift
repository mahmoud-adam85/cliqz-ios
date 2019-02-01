//
//  LumenSubscriptionType.swift
//  Cliqzy
//
//  Created by Mahmoud Adam on 1/14/19.
//  Copyright © 2019 Cliqz. All rights reserved.
//

import Foundation

public enum LumenSubscriptionType {
    case limited
    case trial(Date)
    case premium(PremiumType, Date)
    
    func trialRemainingDays() -> Int? {
        switch self {
        case .trial(let expirationDate):
            return expirationDate.daysSince(Date())
        default:
            return nil
        }
    }
}
