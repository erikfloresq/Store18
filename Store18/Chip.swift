//
//  Chip.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct Chip: View {
    let name: String
    let currentAnchotPoint: CGFloat
    @Binding var anchorPoint: ScrollPosition
    
    var body: some View {
        Button(name) {
            logger.debug("toAnchor \(currentAnchotPoint)")
            anchorPoint = ScrollPosition(point: CGPoint(x: .zero, y: currentAnchotPoint))
        }
        .font(.caption)
        .foregroundColor(.white)
        .buttonStyle(PlainButtonStyle())
        .padding(7)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

#Preview("Chip") {
    Chip(name: "Demo", currentAnchotPoint: 0.0, anchorPoint: .constant(ScrollPosition()))
}
