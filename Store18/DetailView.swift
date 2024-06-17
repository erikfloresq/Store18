//
//  DetailView.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                Image("product")
                    .resizable()
                    .frame(height: 400)
                Text("Producto")
                    .font(.title2)
                    .padding()
            }
        }
        
    }
}

#Preview("DetailView") {
    DetailView()
}
