//
//  Product.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import Foundation

struct Product: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let price: String
}
