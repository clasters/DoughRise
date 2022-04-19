//
//  Category.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import Foundation
import SwiftUI


struct Budget{
    let name: String
    let budget: Int
    let spent: Int
    let left: Int
    let category: Category
    
    var spentInProcent: Int{
        get {
            return Int((Double(spent) / Double(budget)) * 100.0)
        }
    }
    
    var image: String{
        get{
            switch category {
            case .home:
                return "rent"
            case .food:
                return "foor"
            case .education:
                return "education"
            }
        }
        
    }
    
    var gradient: Gradient {
        get{
            switch (category) {
            case .home:
                return Gradient(colors: [Color(AppPalette.shared.homeGradientStart), Color(AppPalette.shared.homeGradientEnd)])
            case .food:
                return Gradient(colors: [Color(AppPalette.shared.foodGradientStart), Color(AppPalette.shared.foodGradientEnd)])
            case .education:
                return Gradient(colors: [Color(AppPalette.shared.educationGradientStart), Color(AppPalette.shared.educationGradientEnd)])
            }
        }
    }
    
}

enum Category{
    case home
    case food
    case education
}
