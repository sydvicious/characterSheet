//
//  ContentView.swift
//  Pathfinder Creatures
//
//  Created by Syd Polk on 7/14/19.
//  Copyright © 2019 Bone Jarring Games and Software, LLC. All rights reserved.
//

import SwiftUI

struct CharacterList : View {
    
    var body: some View {
        NavigationView {
            List(characters) {character in
                NavigationLink(destination: CharacterView(character: character)) {
                    Text("\(character.name)")
                }
            }.navigationBarTitle("Pathfinder Characters")
        }
    }
}

#if DEBUG
struct CharacterList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone Xr", "iPad Air (3rd generation)"], id: \.self) { deviceName in
            CharacterList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif

