// Generated by Resources.swift

import UIKit

// MARK: - UIColor extension

extension UIColor {
    convenience init!(assetName: Colors) {
        self.init(named: assetName.rawValue)
    }
}

// MARK: - Colors

enum Colors: String {
    case test8bit = "test8bit"
    case testHex = "testHex"
    case testFloating = "testFloating"

    var color: UIColor {
        return UIColor(named: self.rawValue)!
    }
}