//
//  Storyboard+Utility.swift
//  personalProject
//
//  Created by Melissa Flores on 7/25/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    enum TBType: String {
        case main
        case login
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    convenience init(type: TBType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
    }
    
    static func initialViewController(for type: TBType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Couldn't instantiate initial view controller for \(type.filename) storyboard.")
        }
        return initialViewController
    }
    
    
    
    
}
