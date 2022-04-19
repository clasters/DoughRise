//
//  BudgetsView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct BudgetsView: View {
    let columns:[GridItem] = Array(repeating: .init(.flexible(), spacing: 6), count: 2)
    var budgets = MockData.getBudgets()
    var body: some View {
            LazyVGrid(columns: columns, spacing: 6) {
                ForEach(budgets) { option in
                    CategoryRow(budget: option)
                }
            }
    }
}

struct BudgetsView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetsView()
    }
}
