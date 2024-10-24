//
//  CardImageIndicatorView.swift
//  Tinder
//
//  Created by Sathish on 23/10/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let currentImageIndex: Int
    let totalImages: Int

    var body: some View {
        HStack {
            ForEach(0 ..< totalImages, id: \.self) { index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top, 8)
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeConstants.cardWidth / CGFloat(totalImages) - 28
    }
}
#Preview {
    CardImageIndicatorView(currentImageIndex: 1, totalImages: 4)
}
