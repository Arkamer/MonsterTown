//
//  Town.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 24/04/21.
//

import Foundation

struct Town {
    var mayor = Mayor()
    static let world = "Earth"
    let region = "Middle"
    var population = 5_422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)\n \(mayor.speech())")
                mayor.anxietyLevel += 1
            }
        }
    }
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        switch population {
        case 0...10_000:
            return Size.small
        
        case 10_001...100_000:
            return Size.medium
            
        default:
            return Size.large
        }
    }
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
