//
//  Double+Extensions.swift
//  Hackerrank
//
//  Created by rafael on 21/04/25.
//

import SwiftUI

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
