//
//  Extension+Double.swift
//  Prodify
//
//  Created by Dongha Ryu on 8/20/24.
//

import SwiftUI

extension Double {
    func asString(style: DateComponentsFormatter.UnitsStyle) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second, .nanosecond]
        formatter.unitsStyle = style
        return formatter.string(from: self) ?? ""
    }
}
