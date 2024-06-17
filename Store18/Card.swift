//
//  Card.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct Card: View {
    @Namespace var hero
    let product: Product
    
    var body: some View {
        NavigationLink(destination: {
            DetailView()
                .navigationTransition(.zoom(sourceID: "myID", in: hero))
        }, label: {
            VStack {
                Image("product")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(5)
                VStack {
                    Text(product.name)
                    Text(product.price).font(.caption)
                }
            }
            .padding(10)
            .clipShape(RoundedRectangle(cornerRadius: 6.0))
            .background(Color.white.shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 0))
        })
        .buttonStyle(PlainButtonStyle())
        .padding()
        .matchedTransitionSource(id: "myID", in: hero)
    }
}

#Preview("Card") {
    Card(product: Product(name: "Product", price: "Price S/10"))
}
