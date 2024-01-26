//
//  CustomImage.swift
//  BlindExerciseOne
//
//  Created by Arfino Alam on 26/01/24.
//

import SwiftUI

struct CustomImage: View {
    let count: Int
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            ForEach(0..<count, id:\.self) { tab in
                Image(BlindModel.data[selectedTab].image)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
        }
        .animation(.easeInOut, value: selectedTab)
    }
}

#Preview {
    @State var selectedTab = 0
    return CustomImage(count: 6, selectedTab: $selectedTab)
}
