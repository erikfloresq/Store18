//
//  Gallery.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct Gallery: View {
    let title: String
    let products = [
        Product(name: "Product", price: "Price S/ 100"),
        Product(name: "Product", price: "Price S/ 100"),
        Product(name: "Product", price: "Price S/ 100"),
        Product(name: "Product", price: "Price S/ 100"),
        Product(name: "Product", price: "Price S/ 100")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(products) { product in
                        Card(product: product)
                    }
                }
            }
        }
    }
}

#Preview {
    Gallery(title: "Producto")
}
