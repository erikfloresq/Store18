//
//  StoreView.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI
import OSLog

let logger = Logger(subsystem: "Store", category: "main")

struct StoreView: View {
    @State private var position: ScrollPosition = .init(point: .zero)
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 16) {
                    Header()
                        .padding(.horizontal, 10)
                    ChipGallery(anchorPoint: $position)
                }
                .padding(.vertical, 10)
                .background(Color.white.shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1))
                ScrollView {
                    LazyVStack {
                        Gallery(title: "Product 1")
                        Gallery(title: "Product 2")
                        Gallery(title: "Product 3")
                        Gallery(title: "Product 4")
                        Gallery(title: "Product 5")
                    }
                }
                .scrollPosition($position)
                .animation(.bouncy, value: position)
            }
        }
    }
}

#Preview("StoreView") {
    StoreView()
}
