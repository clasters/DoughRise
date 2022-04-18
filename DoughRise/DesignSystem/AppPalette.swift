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
}

//MARK: - AssetBasedPalette
final class AssetBasedPalette: Palette {
    let accentColor: UIColor
    let backgroundColor: UIColor
    let mainTextColor: UIColor
    let secondaryColor: UIColor

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
