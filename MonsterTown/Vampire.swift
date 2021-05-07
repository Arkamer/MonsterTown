//
//  Vampire.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 28/04/21.
//

import Foundation

class Vampire: Monster {
    var thralls = [Vampire]()
    
    override func terrorizeTown() {
        super.terrorizeTown()
        
        if let thrall = town?.population, thrall >= 1 {
            town?.changePopulation(by: -1)
            thralls.append(Vampire())
        }
    }
}
