//
//  main.swift
//  MonsterTown
//
//  Created by Ailton Lessa on 24/04/21.
//

import Foundation

var myTown = Town()
//myTown.changePopulation(by: 500)

let fredTheZombie = Zombie()
fredTheZombie.name = "Fred"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let nosferatus = Vampire()
nosferatus.name = "Nosferatus"
nosferatus.town = myTown
nosferatus.terrorizeTown()
nosferatus.town?.printDescription()
print(nosferatus.thralls.count)
