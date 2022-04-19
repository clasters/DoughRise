//
//  AppPalette.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import Foundation
import UIKit

//MARK: - Palette Protocol
protocol Palette: AnyObject {
    var accentColor: UIColor { get }
    var backgroundColor: UIColor { get }
    var mainTextColor: UIColor { get }
    var secondaryColor: UIColor { get }
    var homeGradientStart: UIColor { get }
    var homeGradientEnd: UIColor { get }
    var foodGradientStart: UIColor { get }
    var foodGradientEnd: UIColor { get }
    var educationGradientStart: UIColor { get }
    var educationGradientEnd: UIColor { get }
    var budgetGradientStart: UIColor { get }
    var budgetGradientEnd: UIColor { get }
}

//MARK: - AssetBasedPalette
final class AssetBasedPalette: Palette {
    let accentColor: UIColor
    let backgroundColor: UIColor
    let mainTextColor: UIColor
    let secondaryColor: UIColor
    var homeGradientStart: UIColor
    var homeGradientEnd: UIColor
    var foodGradientStart: UIColor
    var foodGradientEnd: UIColor
    var educationGradientStart: UIColor
    var educationGradientEnd: UIColor
    var budgetGradientStart: UIColor
    var budgetGradientEnd: UIColor
    
    enum UsingAssetError: Error {
        case cannotFindAsset(named: String)
    }

    private static func color(named name: String) throws -> UIColor {
        guard let colorFromAssets = UIColor(named: "Palette/\(name)") else {
            throw UsingAssetError.cannotFindAsset(named: "Palette/\(name)")
        }
        return colorFromAssets
    }

    init() throws {
        accentColor = try AssetBasedPalette.color(named: "AccentColor")
        backgroundColor = try AssetBasedPalette.color(named: "BackgroundColor")
        mainTextColor = try AssetBasedPalette.color(named: "MainTextColor")
        secondaryColor = try AssetBasedPalette.color(named: "SecondaryColor")
        homeGradientStart = try AssetBasedPalette.color(named: "Gradient/EducationGradientStart")
        homeGradientEnd = try AssetBasedPalette.color(named: "Gradient/EducationGradientEnd")
        foodGradientStart = try AssetBasedPalette.color(named: "Gradient/FoodGradientStart")
        foodGradientEnd = try AssetBasedPalette.color(named: "Gradient/FoodGradientEnd")
        educationGradientStart = try AssetBasedPalette.color(named: "Gradient/HomeGradientStart")
        educationGradientEnd = try AssetBasedPalette.color(named: "Gradient/HomeGradientEnd")
        budgetGradientStart = try AssetBasedPalette.color(named: "Gradient/BudgetGradientStart")
        budgetGradientEnd = try AssetBasedPalette.color(named: "Gradient/BudgetGradientEnd")
    }
}

//MARK: - AppPalette Singleton
enum AppPalette {
    static let shared: Palette = {
            do {
                return try AssetBasedPalette()
            } catch {
                fatalError("Cannot create the app palette")
            }
      
    }()
}
