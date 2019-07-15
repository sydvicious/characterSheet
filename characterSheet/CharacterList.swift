//
//  ContentView.swift
//  Pathfinder Creatures
//
//  Created by Syd Polk on 7/14/19.
//  Copyright © 2019 Bone Jarring Games and Software, LLC. All rights reserved.
//

import SwiftUI

struct CharacterList : View {
    @State private var names = ["Pendecar", "Myrathel", "Milo"]
    
    var body: some View {
        NavigationView {
            VStack {
                List(names.identified(by: \.self)) { name in
                    Text(name)
                }
            }.navigationBarTitle("Pathfinder Characters")
        }
    }
}

#if DEBUG
struct CharacterList_Previews : PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
#endif
