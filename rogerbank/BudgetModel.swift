//
//  BudgetModel.swift
//  rogerbank
//
//  Created by Rogério Tavares on 07/01/22.
//

import Foundation
import UIKit

struct BudgetModel {
    let imageName: String
    let name: String
    let total: Double
    let balance: Double
    
    func getImageView() -> UIImage? {
        return UIImage(named: imageName)
    }
    
    func getPercentage() -> String {
        let value = 100 - ((total - balance) / total)
        return "\(value.formatted())%"
    }
    
    func getSubtitle() -> String {
        let value = total - balance
        return "Restando R$ \(value.formatted())"
    }
}
