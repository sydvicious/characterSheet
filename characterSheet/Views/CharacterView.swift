//
//  CharacterView.swift
//  Pathfinder Creatures
//
//  Created by Syd Polk on 7/14/19.
//  Copyright © 2019 Bone Jarring Games and Software, LLC. All rights reserved.
//

import SwiftUI

struct CharacterView : View {
    var character: Character

    let labels = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charsima"]
    
    var body: some View {
        HStack {
            List {
                ForEach(labels, id: \.self) {label in
                    Text("\(label):")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            List {
                Text("\(character.strength)")
                Text("\(character.dexterity)")
                Text("\(character.constitution)")
                Text("\(character.intelligence)")
                Text("\(character.wisdom)")
                Text("\(character.charisma)")
            }.frame(maxWidth: 100)
            Spacer()
        }.padding(.trailing)
    }
}

#if DEBUG
var dummyCharacter = Character(id: 1, name: "Pendecar", strength: 18, dexterity: 18, constitution: 17, intelligence: 20, wisdom: 14, charisma: 12)
struct CharacterView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"], id: \.self) { deviceName in
            CharacterView(character: dummyCharacter)
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
