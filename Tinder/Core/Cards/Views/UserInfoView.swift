//
//  UserInfoView.swift
//  Tinder
//
//  Created by Sathish on 23/10/24.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                
                Button {
                    print("Button Pressed")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                    
                }
            }
            Text("Developer")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    UserInfoView(user: MockData.mockUsers[0])
}
