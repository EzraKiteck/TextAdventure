//
//  main.swift
//  TextAdventure
//
//  Created by Ezra Kiteck on 8/20/18.
//  Copyright © 2018 Ezra Kiteck. All rights reserved.
//

import Foundation

print("GAME START\n")
print("Hello! Welcome...um...what was your name again?")
let name = readLine()!
print("Ah, yes! Welcome, \(name), to Text Adventure!")
print("If you are ready, we shall start our journey. Are you up for this?")
var answer = String(readLine()!)
while (answer != "yes" && answer != "no") {
    print("Um, you see, you must answer 'yes' or 'no'")
    answer = String(readLine()!)
}
if answer == "yes" {
    print("Good, good! Brimming with energy, aren't you? I like it! Let's get started. \n")
    print("Press 'Enter' to continue")
    var _ = readLine()
} else {
    print("Well if you have a better idea of what to do I'd love to hear it.  But, until then, we're playing Text Adventure.\n")
    print("Press 'Enter' to continue")
    var _ = readLine()
}

print("You are a noble and energetic pomeranian named \(name).  You live on your uncle's farm, toiling day and night, and although it pays the bills, it is the most boring place you can imagine. \nThis particular overcast and extremely boring day, you glance at the spooky forest to the east.  The forest is so mysterious, so woody, so...UN-boring. Surely Uncle wouldn't mind if you took a short break from chores, right?")

print("What will you do?\n 1: Explore the woods \n 2: Stay on the farm \n 3: Do a little dance")

var alreadyRun = false

func firstDecision () {
    if alreadyRun == true {
        print("However, you cannot avoid the monumental decision at hand.  \n 1: Explore the woods \n 2: Stay on the farm")
    }
    answer = readLine()!
    if (alreadyRun == false) {
        while (Int(answer) != 1 && Int(answer) != 2 && Int(answer) != 3) {
            print("Enter '1' '2' or '3' to choose a choice, \(name) the pomeranian.")
            answer = readLine()!
        }
    }
    if (alreadyRun == true) {
        while (Int(answer) != 1 && Int(answer) != 2) {
            print("Enter '1' or '2' to choose a choice, \(name) the pomeranian.")
            answer = readLine()!
        }
    }
    if Int(answer) == 1 {
        print("TO THE FOREST! Yes, this is already infinitely better than harvesting cabbages!  Marching across the plantation, you begin to hear the rustling of the leaves, the whispers of the trees, and it sounds like awesome!  Now you pause, the forest looming over you.  It seems as if this wooden maze goes on forever. Was this the best idea?  There were, no doubt, endless stories waiting to be told in these woods. But, those cabbages, no doubt, were not going to harvest themselves...\n")
        print("Press 'Enter' to continue")
        var _ = readLine()
        Forest.forestFunction()
    } else if Int(answer) == 2 {
        print("Of course! Exploring would be extremely irresponsible and childish! Uncle trusted you with this cabbage patch.  What would he say if he found you daydreaming about adventure, excitement, and the like?  'Utter rubbish.'  Yes, you are sure he would use those exact words.\n")
        print("GAME OVER")
    } else if Int(answer) == 3 && alreadyRun == false {
        print("Oh, yes!  A little dance always clears the mind! In an extravagant show of meticulously choreographed motions, the mind, body, and spirit harmonize and inspiration is found without fail.  You flail your doggy legs like a flower dancing in a hurricane.  Good thing no one is watching.\n  ")
        alreadyRun = true
        print("Press 'Enter' to continue")
        var _ = readLine()
        firstDecision()
    }
}
firstDecision()
