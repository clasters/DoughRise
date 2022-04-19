//
//  MockData.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import Foundation


class MockData{
   static func getBudgets() -> [Budget]{
        return [
            Budget(id: 1, name: "Rent", budget: 900, spent: 250, left: 650, category: .home),
            Budget(id: 2, name: "School Loans", budget: 900, spent: 250, left: 650, category: .education),
            Budget(id: 3, name: "Eating Out", budget: 900, spent: 250, left: 650, category: .food)
        ]
    }
}
