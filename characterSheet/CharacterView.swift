//
//  CharacterView.swift
//  Pathfinder Creatures
//
//  Created by Syd Polk on 7/14/19.
//  Copyright © 2019 Bone Jarring Games and Software, LLC. All rights reserved.
//

import SwiftUI

struct CharacterView : View {
    @State private var name = "Pendecar"
    
    @State private var strength = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @State private var dexterity = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @State private var constitution = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @State private var intelligence = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @State private var wisdom = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @State private var charisma = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)

    var body: some View {
        NavigationView() {
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
                        Text("\(strength)")
                        Text("\(dexterity)")
                        Text("\(constitution)")
                        Text("\(intelligence)")
                        Text("\(wisdom)")
                        Text("\(charisma)")
                    }.padding(.trailing)
                }
                Spacer()
            }.navigationBarTitle(name)
        }
    }
}

#if DEBUG
struct CharacterView_Previews : PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
#endif
