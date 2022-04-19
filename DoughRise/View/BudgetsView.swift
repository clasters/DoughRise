//
//  BudgetsView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct BudgetsView: View {
    var screenWidth = UIScreen.main.bounds.size.width
    let columns:[GridItem] = Array(repeating: .init(.flexible(), spacing: 6), count: 2)
    var budgets: [Budget]
    
    var body: some View {
            LazyVGrid(columns: columns, spacing: 6) {
                ForEach(budgets) { option in
                    CategoryRow(budget: option)
                }
                AddCategoryRow()
                    
            }
    }
}

struct BudgetsView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetsView(budgets: MockData.getBudgets())
    }
}
