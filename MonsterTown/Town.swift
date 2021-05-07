//
//  Town.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 24/04/21.
//

import Foundation

struct Town {
    let region = "Middle"
    var population = 1
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
        if population < 0 {
            population = 0
        }
    }
}
