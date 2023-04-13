//
//  Model.swift
//  HotCoffee
//
//  Created by Deniz Cengiz on 4/10/23.
//

import Foundation
enum CoffeeType: String, Codable {
    case cappucino
    case latte
    case expressino
    case cortado
}

enum CoffeeSize: String, Codable {
    case small
    case medium
    case large
}
struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
}
