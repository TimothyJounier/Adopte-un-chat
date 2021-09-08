//
//  Cat.swift
//  AdopteUnChat
//
//  Created by Timothy jounier on 08/09/2021.
//

import UIKit

struct Cat {
    var name: String
    var age: Int
    var gender: Gender
    var imageString: String
    
    var desc: String {
        return "\(gender.rawValue) agé de \(age) ans"
    }
    
    var color: UIColor {
        switch gender {
        case .male:
            return UIColor.systemTeal
        case .femelle:
            return UIColor.systemPink
        }
    }
    
    var cgColor: CGColor {
        return color.cgColor
    }
    
    func setImage() -> UIImage? {
        return UIImage(named: imageString)
    }
    
}

enum Gender: String {
    case male
    case femelle
}
