//
//  HomeView.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 16){
            HStack(alignment: .center, spacing: 0){
                Spacer()
                HStack{
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
                RoundedRectangle(cornerRadius: 10).frame(height: 35).padding(.horizontal, 19)
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
            Spacer()
                
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
