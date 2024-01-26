//
//  BlindExerciseSingleView.swift
//  BlindExerciseOne
//
//  Created by Arfino Alam on 26/01/24.
//

import SwiftUI

struct BlindExerciseSingleView: View {
    var content: BlindModel
    var body: some View {
        
        VStack(alignment: .leading,spacing: 16) {
            Spacer()
            Text(content.header)
                .font(.custom("Inter", size: 32))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(content.subtitle)
                .font(.custom("Inter", size: 16))
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
        .multilineTextAlignment(.leading)
        .padding(.vertical, 100)
        .padding(.horizontal)
        
    }
}

#Preview {
    BlindExerciseSingleView(content: BlindModel.data[5])
}
