//
//  WeatherSeverity.swift
//  
//
//  Created by Jeremy Greenwood on 8/28/22.
//

import Foundation

public enum WeatherSeverity : String, CaseIterable, CustomStringConvertible, Hashable {

    /// Specifies "minimal" or no threat to life or property.
    case minor

    /// Specifies "possible" threat to life or property.
    case moderate

    /// Specifies "significant" threat to life or property.
    case severe

    /// Specifies "extraordinary" threat to life or property.
    case extreme

    /// Specifies unknown severity.
    case unknown

    /// Localized string describing the weather severity.
    public var description: String {
        fatalError("not implemented")
    }

    /// A localized accessibility description describing the weather severity, suitable for
    /// Voice Over and other assistive technologies.
    public var accessibilityDescription: String {
        fatalError("not implemented")
    }

    /// Creates a new instance with the specified raw value.
    ///
    /// If there is no value of the type that corresponds with the specified raw
    /// value, this initializer returns `nil`. For example:
    ///
    ///     enum PaperSize: String {
    ///         case A4, A5, Letter, Legal
    ///     }
    ///
    ///     print(PaperSize(rawValue: "Legal"))
    ///     // Prints "Optional("PaperSize.Legal")"
    ///
    ///     print(PaperSize(rawValue: "Tabloid"))
    ///     // Prints "nil"
    ///
    /// - Parameter rawValue: The raw value to use for the new instance.
    public init?(rawValue: String) {
        fatalError("not implemented")
    }

    /// A type that can represent a collection of all values of this type.
    public typealias AllCases = [WeatherSeverity]

    /// The raw type that can be used to represent all values of the conforming
    /// type.
    ///
    /// Every distinct value of the conforming type has a corresponding unique
    /// value of the `RawValue` type, but there may be values of the `RawValue`
    /// type that don't have a corresponding value of the conforming type.
    public typealias RawValue = String

    /// A collection of all values of this type.
    public static var allCases: [WeatherSeverity] {
        fatalError("not implemented")
    }

    /// The corresponding value of the raw type.
    ///
    /// A new instance initialized with `rawValue` will be equivalent to this
    /// instance. For example:
    ///
    ///     enum PaperSize: String {
    ///         case A4, A5, Letter, Legal
    ///     }
    ///
    ///     let selectedSize = PaperSize.Letter
    ///     print(selectedSize.rawValue)
    ///     // Prints "Letter"
    ///
    ///     print(selectedSize == PaperSize(rawValue: selectedSize.rawValue)!)
    ///     // Prints "true"
    public var rawValue: String {
        fatalError("not implemented")
    }
}
