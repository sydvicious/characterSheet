//
//  Character.swift
//  characterSheet
//
//  Created by Syd Polk on 7/20/19.
//  Copyright © 2019 Bone Jarring Games and Software, LLC. All rights reserved.
//

import SwiftUI

struct Character: Hashable, Identifiable {
    var id: Int
    
    var name: String
    
    var strength: Int
    var dexterity: Int
    var constitution: Int
    var intelligence: Int
    var wisdom: Int
    var charisma: Int
    
}

