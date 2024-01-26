//
//  BlindModel.swift
//  BlindExerciseOne
//
//  Created by Arfino Alam on 25/01/24.
//

import Foundation

struct BlindModel: Identifiable {
    var id = UUID()
    var image: String
    var header: String
    var subtitle: String
    var tag: Int
}

extension BlindModel {
    static let data: [BlindModel] = [
        BlindModel(image: "clear1", header: "Your Life in Lists", subtitle: "Clear is a colorful canvas for \nyour thoughts, plans and goals. \nHere's what makes it uniquely \nfun and effective.",tag: 0),
        BlindModel(image: "clear2", header: "Radically Simple", subtitle: "Clear is a pristine place to think, \ntotally free of distractions or \nfeature clutter.",tag: 1 ),
        BlindModel(image: "clear3", header: "Remarkably Fluent", subtitle: "Clear's gesture shortcuts are \nintuitive and efficient. Try \npinching to insert or take a \nscreenshot to share a list.",tag: 2 ),
        BlindModel(image: "clear4", header: "Strangely Addictive", subtitle: "Clear harnesses your dopamine \nwith satisfying sounds, haptics, \nand collectibles that unlock as \nyou get things done.",tag: 3 ),
        BlindModel(image: "clear5", header: "Insanely Personalizable", subtitle: "Mix and match hundreds of \ncollectibles, totally transforming \nClear to suit your style and \nwhims.",tag: 4 ),
        BlindModel(image: "clear6", header: "Treat Yourself", subtitle: "Because it's productive to after a \njob well done. Clear is 100% free \nto use and also a treat to shop in. \nHappy listing!",tag: 5 )
    ]
}
