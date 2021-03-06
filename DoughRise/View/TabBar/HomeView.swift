//
//  HomeView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct HomeView: View {
    let budget = MockData.getBudgets()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16){
                //MARK: - NavBar
                HStack(alignment: .center, spacing: 0){
                    Spacer()
                    HStack(spacing: 0){
                        Text("SEPTEMBER 2021")
                            .foregroundColor(Color(AppPalette.shared.mainTextColor))
                            .font((Font(AppFontBook.shared.titleSemibold)))
                        Image("back-arrow")
                    }
                    Spacer()
                    Image("plus")
                    
                }
                .padding(.top, 24)
                .padding(.horizontal, 29)
                
                Text("$0 SPENT OF $6,000")
                    .foregroundColor(Color(AppPalette.shared.mainTextColor))
                    .font((Font(AppFontBook.shared.largeTitle)))
                
                VStack{
                    GradientProgressView(
                        cornerRadius: 10,
                        height: 35,
                        gradient: Gradient(colors: [Color(AppPalette.shared.budgetGradientStart), Color(AppPalette.shared.budgetGradientEnd)])
                    )
                    .padding(.horizontal, 19)
                    
                    HStack{
                        Text("$6,000 Left")
                            .foregroundColor(Color(AppPalette.shared.mainTextColor))
                            .font((Font(AppFontBook.shared.subheadSemibold)))
                        Spacer()
                        Text("$1,000 Spent")
                            .foregroundColor(Color(AppPalette.shared.mainTextColor))
                            .font((Font(AppFontBook.shared.subheadSemibold)))
                    }.padding(.horizontal, 25)
                }
                
                
                VStack(spacing: 5){
                    Text("Breakdown of your Budget").kerning(1.12)
                        .foregroundColor(Color(AppPalette.shared.mainTextColor))
                        .font((Font(AppFontBook.shared.titleMedium)))
                    
                    
                    HStack{
                        Text("Sort: Alphabetical Order").kerning(1.12)
                            .foregroundColor(Color(AppPalette.shared.mainTextColor))
                            .font((Font(AppFontBook.shared.headlineMedium)))
                            .padding(.leading, 27)
                        Spacer()
                    }
                    
                }
                
                BudgetsView(budgets: budget).padding(.horizontal, 6)
                
            }
            
        }}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
