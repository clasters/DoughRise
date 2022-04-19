//
//  CategoryRow.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct CategoryRow: View {
    let budget: Budget
    
    var body: some View {
        ZStack{
            VStack(spacing: 6){
                Text(budget.name)
                    .kerning(1.13)
                    .foregroundColor(Color(AppPalette.shared.mainTextColor))
                    .font((Font(AppFontBook.shared.headlineMedium)))
                
                GradientProgressView(cornerRadius: 5, height: 20, gradient: budget.gradient)
                    .padding(.leading, 12)
                    .padding(.trailing, 7)
                
                HStack{
                    Text("\(budget.spentInProcent)% of Budget Spent")
                        .kerning(1.12)
                        .foregroundColor(Color(AppPalette.shared.mainTextColor))
                        .font((Font(AppFontBook.shared.subheadSemibold)))
                    Spacer()
                }.padding(.leading, 15)
                
                HStack(spacing: 8){
                    VStack(alignment: .leading){
                        HStack{
                            Text("Budget")
                                .kerning(1.12)
                                .foregroundColor(Color(AppPalette.shared.mainTextColor))
                                .font((Font(AppFontBook.shared.subheadSemibold)))
                                .frame(width: 59, height: 22, alignment: .leading)
                            
                            Text("$\(budget.budget)")
                                .kerning(1.13)
                                .foregroundColor(Color(AppPalette.shared.mainTextColor))
                                .font((Font(AppFontBook.shared.headlineMedium)))
                        }
                        HStack{
                            Text("Spent")
                                .kerning(1.12)
                                .foregroundColor(Color(AppPalette.shared.mainTextColor))
                                .font((Font(AppFontBook.shared.subheadSemibold)))
                                .frame(width: 59, height: 22, alignment: .leading)
                            
                            Text("$\(budget.spent)")
                                .kerning(1.13)
                                .font((Font(AppFontBook.shared.headlineMedium)))
                                .foregroundColor(.red)
                        }
                        HStack{
                            Text("Left")
                                .kerning(1.12)
                                .foregroundColor(Color(AppPalette.shared.mainTextColor))
                                .font((Font(AppFontBook.shared.subheadSemibold)))
                                .frame(width: 59, height: 22, alignment: .leading)
                            
                            Text("$\(budget.left)")
                                .kerning(1.13)
                                .font((Font(AppFontBook.shared.headlineMedium)))
                                .foregroundColor(.green)
                        }
                    }
                    Image(budget.image).padding(2)
                }
            }
            .padding(.bottom, 11)
            .padding(.top, 6)
        }
        .background(Color(AppPalette.shared.secondaryColor))
        .cornerRadius(10)
        .shadow(radius: 2)
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let budget = MockData.getBudgets().first!
    static var previews: some View {
        CategoryRow(budget: budget)
    }
}
