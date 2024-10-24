//
//  CardView.swift
//  Tinder
//
//  Created by Sathish on 23/10/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degress: Double = 0
    @State private var currentImageIndex = 0 
    
    @State private var mockImages = [
        "profileImg1",
        "profileImg2",
        "profileImg3",
        "profileImg4",
        
    ]
     let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageURLs[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight) // Set fixed size here
                                       .clipped() // Ensure the image doesn't overflow its frame
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, ImageCount: imageCount)
                    }
                CardImageIndicatorView(currentImageIndex: currentImageIndex, totalImages: imageCount)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            UserInfoView(user: user)
//                .padding(.horizontal)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degress))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChaged)
                .onEnded(onDragEnded)
            
        ) // Add this closing parenthesis
    }
}

private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageURLs.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degress = 0
    }
    func swipeRight() {
        xOffset = 500
        degress = 12
    }
    
    func swipeLeft() {
        xOffset = -500
        degress = -12
    }
}

private extension CardView {
    func onDragChaged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degress = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
        
    }
}


#Preview {
    CardView(model: CardModel(user: MockData.mockUsers[1]))
}
