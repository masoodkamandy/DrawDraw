//
//  Utils.swift
//
//
//  Created by MASOOD KAMANDY on 10/22/19.
//  Copyright © 2019 Masood Kamandy. All rights reserved.
//

import Foundation
import CoreGraphics

// MARK: MAP FUNCTION

/// This is a mapping function that remaps a number from one range to another.
/// Based on Processing's map() function translated into Swift.
/// More info available here: https://processing.org/reference/map_.html'

/// Use this if you need to modify the behavior of an input variable and stretch it
/// or shrink its values proportionally.
/// ````
/// let remapped = map(valueToModify: input, low1: 0, high1: 10, low2: 100, high2: 100)
/// ````
/// - parameter valueToModify: The input variable you would like to remap.
/// - parameter low1: The original low for the input variable's range.
/// - parameter high1: The original high for the input variable's range.
/// - parameter low2: The new low to output for the remapped range.
/// - parameter high2: The new high to output for the remapped range.
/// - returns: A `Double` remapped to the new scale.

func map(_ valueToModify: Double, _ low1: Double, _ high1: Double, _ low2: Double, _ high2: Double) -> Double {
    let result = (low2 + (valueToModify - low1)) * (high2 - low2) / (high1 - low1)
    return result
}

func map(_ valueToModify: CGFloat, _ low1: CGFloat, _ high1: CGFloat, _ low2: CGFloat, _ high2: CGFloat) -> CGFloat {
    let result = (low2 + (valueToModify - low1)) * (high2 - low2) / (high1 - low1)
    return result
}

// MARK: RANDOM INTEGER FUNCTION

/// This is a basic random integer function.
/// ```
/// let randomNumber = random(50)
/// ```
/// - parameter max: max random integer value


func random(_ max:Int) -> Int {
    var result = Int.random(in: 0...max)
    return result
}

func random(_ min: Int, _ max:Int) -> Int {
    var result = Int.random(in: min...max)
    return result
}

// MARK: RANDOM UNSIGNED 8-BIT INTEGER FUNCTION

/// This is a basic random unsigned 8-bit integer function.
/// ```
/// let randomNumber = random(50)
/// ```
/// - parameter max: max random integer value

func random(_ max:UInt8) -> UInt8 {
    var result = UInt8.random(in: 0...max)
    return result
}

func random(_ min: UInt8, _ max:UInt8) -> UInt8 {
    var result = UInt8.random(in: min...max)
    return result
}

// MARK: RANDOM CGFLOAT FUNCTION

/// This is a basic random floating point function.
/// ```
/// let randomNumber = random(50.0)
/// ```
/// - parameter upperBound: upper bound of random double values

func random(_ max:CGFloat) -> CGFloat {
    var result = CGFloat.random(in: 0...max)
    return result
}

func random(_ min: CGFloat, _ max:CGFloat) -> CGFloat {
    var result = CGFloat.random(in: min...max)
    return result
}
