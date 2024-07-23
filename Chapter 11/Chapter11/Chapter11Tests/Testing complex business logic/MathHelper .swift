//
//  MathHelper .swift
//  Chapter11Tests
//
//  Created by Mihir Das on 19/07/24.
//

import Foundation

class MathHelper {
    static func isPrime(_ number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}
