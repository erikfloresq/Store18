//
//  ChipGallery.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct ChipGallery: View {
    @Binding var anchorPoint: ScrollPosition
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Chip(
                    name: "Product 1",
                    currentAnchotPoint: 0.0,
                    anchorPoint: $anchorPoint
                )
                Chip(
                    name: "Product 2",
                    currentAnchotPoint: 250.0,
                    anchorPoint: $anchorPoint
                )
                Chip(
                    name: "Product 3",
                    currentAnchotPoint: 500.0,
                    anchorPoint: $anchorPoint
                )
                Chip(
                    name: "Product 4",
                    currentAnchotPoint: 750.0,
                    anchorPoint: $anchorPoint
                )
                Chip(
                    name: "Product 5",
                    currentAnchotPoint: 950.0,
                    anchorPoint: $anchorPoint
                )
                    
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    ChipGallery(anchorPoint: .constant(ScrollPosition(id: CGPoint.zero)))
}
