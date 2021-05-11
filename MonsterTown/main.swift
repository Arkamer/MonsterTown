//
//  main.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 24/04/21.
//

import Foundation

var myTown = Town(population: 10_000, numberOfStoplights: 6)
myTown.printDescription()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie()
fredTheZombie.name = "Fred"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim poom: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if Zombie .isTerrifying {
    print("Run away!")
}

