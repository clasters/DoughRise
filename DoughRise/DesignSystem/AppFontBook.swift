//
//  AppFontBook.swift
//  DoughRise
//
//  Created by Mark on 4/18/22.
//

import Foundation
import UIKit

//MARK: - FontBook Protocol
/// Catalogue of all fonts used in the app
protocol FontBook: AnyObject {
    /// Avenir 16 heavy
    var largeTitle: UIFont { get }
    /// Montserrat 14 semibold
    var titleSemibold: UIFont { get }
    /// Montserrat 14 medium
    var titleMedium: UIFont { get }
    /// Montserrat 13 medium
    var headlineMedium: UIFont { get }
    /// Montserrat 10 semibold
    var subheadSemibold: UIFont { get }

}

//MARK: - StaticFontBook 
/// Stores a set of static fonts used in the app
final class StaticFontBook: FontBook {
    
    lazy var largeTitle = UIFont(name: "Avenir-Heavy", size: 16)!
    lazy var titleSemibold = UIFont(name: "Montserrat-SemiBold", size: 14)!
    lazy var titleMedium = UIFont(name: "Montserrat-Medium", size: 14)!
    lazy var headlineMedium = UIFont(name: "Montserrat-Medium", size: 13)!
    lazy var subheadSemibold = UIFont(name: "Montserrat-SemiBold", size: 10)!

    
}

//MARK: - AppFontBook Singleton
/// Provides a single way to get access to the app's font book
enum AppFontBook {
    static let shared: FontBook = StaticFontBook()
}
