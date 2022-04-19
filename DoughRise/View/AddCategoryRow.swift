//
//  AddCategoryRow.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct AddCategoryRow: View {
    var screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        VStack(spacing: 19){
            Text("Add A Category")
                .kerning(1.13)
                .foregroundColor(Color(AppPalette.shared.mainTextColor))
                .font((Font(AppFontBook.shared.headlineMedium)))
                .padding(.top, -20)
            Image("big-plus")
        }
        .frame(width: (screenWidth - 18) / 2 , height: 148)
        .background(Color(AppPalette.shared.secondaryColor))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct AddCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryRow()
    }
}
