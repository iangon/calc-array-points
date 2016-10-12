//
//  main.swift
//  CalcArrayPoints
//
//  Created by Ian on 10/9/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import Foundation

/*
 *  Add function
 */
func add(left: Int, right: Int) -> Int {
    return left + right
}

/*
 *  add array function.
 */
func add(array: Array<Int>) -> Int {
    var result : Int = 0
    
    for num in array {
        result += num
    }
    
    return result
}

/*
 *  subtract function
 */
func subtract(left: Int, right: Int) -> Int {
    return left - right
}

/*
 *  divide function
 */
func divide(left: Int, right: Int) -> Int {
    return left / right
}

/*
 *  multiply function
 */
func multiply(left: Int, right: Int) -> Int {
    return left * right
}

/*
 *  multiply array function.
 */
func multiply(array: Array<Int>) -> Int {
    var result : Int = array[array.count - 1]
    
    for index in 0 ... array.count - 2 {
        result *= array[index]
    }
    
    return result
}

/*
 *  count array function.
 */
func count(array: Array<Int>) -> Int {
    return array.count
}

/*
 *  avg array function.
 */
func average(array: Array<Int>) -> Int {
    var numerator : Int = 0
    let denominator = array.count
    for num in array {
        numerator += num
    }
    
    return numerator / denominator
}

/*
 *  Generic evaluation function
 */

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

/*
 *  Generic evaluation function
 */

func reduce(array: Array<Int>, operation : (Array<Int>) -> Int) -> Int {
    return operation(array)
}

func add(p1 : (x: Int, y: Int), p2 : (x: Int, y: Int)) -> (_: Int, _: Int) {
    return (p1.x + p2.x, p1.y + p2.y)
}

func subtract(p1 : (x: Int, y: Int), p2 : (x: Int, y: Int)) -> (_: Int, _: Int) {
    return (p1.x - p2.x, p1.y - p2.y)
}


func add(p1 : Dictionary<String, Int>, p2 : Dictionary<String, Int>) -> Dictionary<String, Int>? {

    return [ "x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}

func add(p1 : Dictionary<String, Int>?, p2 : Dictionary<String, Int>?) -> Dictionary<String, Int>? {
    return nil
}

func add(p1 : Dictionary<String, Double>, p2 : Dictionary<String, Double>) -> Dictionary<String, Double>? {
    return [ "x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}

func subtract(p1 : Dictionary<String, Int>, p2 : Dictionary<String, Int>) -> Dictionary<String, Int>?
{
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        return nil
    }
    
    return [ "x" : p1["x"]! - p2["x"]! , "y" : p1["y"]! - p2["y"]!]
}

func subtract(p1 : Dictionary<String, Double>, p2 : Dictionary<String, Double>) -> Dictionary<String, Double>?
{
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        return nil
    }
    return [ "x" : p1["x"]! - p2["x"]! , "y" : p1["y"]! - p2["y"]!]
}
