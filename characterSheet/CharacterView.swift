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

    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Strength:").bold()
                    Text("Dexterity:").bold()
                    Text("Constitution:").bold()
                    Text("Intelligence:").bold()
                    Text("Wisdom:").bold()
                    Text("Charisma:").bold()
                }
                VStack(alignment: .trailing) {
                    Text("\(character.strength)")
                    Text("\(character.dexterity)")
                    Text("\(character.constitution)")
                    Text("\(character.intelligence)")
                    Text("\(character.wisdom)")
                    Text("\(character.charisma)")
                }.padding(.trailing)
            }
            Spacer()
        }
    }
}

#if DEBUG
var dummyCharacter = Character(id: 1, name: "Pendecar", strength: 18, dexterity: 18, constitution: 17, intelligence: 20, wisdom: 14, charisma: 12)
struct CharacterView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPad Air (3rd generation)"], id: \.self) { deviceName in
            CharacterView(character: dummyCharacter)
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
