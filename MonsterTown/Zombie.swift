//
//  Zombie.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 24/04/21.
//

import Foundation

class Zombie: Monster {
    static let isTerrifying = true
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
        regenerate()
    }
}
