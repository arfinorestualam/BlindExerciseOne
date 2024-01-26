//
//  BlindExeriseView.swift
//  BlindExerciseOne
//
//  Created by Arfino Alam on 25/01/24.
//

import SwiftUI

struct BlindExeriseView: View {
    private let tabs: [BlindModel] = BlindModel.data
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            VStack{
                CustomImage(count: tabs.count, selectedTab: $selectedTab)
            }
            VStack{
                TabView(selection: $selectedTab) {
                    ForEach(tabs) { tab in
                        Group {
                            BlindExerciseSingleView(content: tab)
                        }.tag(tab.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                .animation(.easeInOut, value: selectedTab)
                .padding(.bottom, 20)
                .onChange(of: selectedTab){
                    selectedTab = selectedTab
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BlindExeriseView()
}
