//
//  Forest.swift
//  TextAdventure
//
//  Created by Ezra Kiteck on 8/20/18.
//  Copyright © 2018 Ezra Kiteck. All rights reserved.
//

import Foundation

class Forest {
    
    static func forestFunction() {
        
        var alreadyRun = false
        var alreadyRunSecond = false
        
        func firstStage() {
            if (!alreadyRun) {
                print("What will you do?\n 1: Press on! \n 2: Retreat \n 3: Ponder your options")
            } else {
                print("Now that you have carefully weighed every possible outcome, what will you do?\n 1: Press on! \n 2: Retreat")
            }
            answer = readLine()!
            if (!alreadyRun) {
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
                print("You push all doubts aside.  You, \(name), the considerably cute pupper, shall embark on this noble quest no matter the repercussions.  You know that this will have absulutely 100% nothing to do with cabbages, so it must not be boring.  Ergo, if it isn't boring, it must be fun.  Ergo, if it is fun, you will enjoy it.  Confident in your decision and your critical thinking skills, you PRESS ON!\n")
                print("Press 'Enter' to continue")
                var _ = readLine()
            } else if Int(answer) == 2 {
                print("This was madness!  How could such an obedient, noble pomeranian such as yourself give in to such temptations?  Back to the farm!  Uncle would surely have punished you for this, and you would have deserved it.  Shameful.  Just shameful.\n...But still boring.\n")
                print("GAME OVER")
            } else if Int(answer) == 3 && !alreadyRun {
                print("Before blindly making a decision, you decide to sit and think for a bit.  Is this forest going to be fun, but also dangerous?  Probably.  Is going back to the farm the morally-right-but-ultimately-boring answer?  Probably.  Resting on your fluffy white paws, you try hard not to fall asleep.  All this thinking is very tiring, even though you are only reiterating your thoughts from earlier.  You stand up and stretch in an extremely dog-like manner.  Rejuvenated, you are ready to decide how to continue your quest!\n  ")
                print("Press 'Enter' to continue")
                var _ = readLine()
                alreadyRun = true
                firstStage()
            }
        }
        
        func secondStage() {
            print("Upon entering the Forest of Unforetold Legendariness (which you just now decided to call it), you breathe in the earthy, misty air, and you are filled with excitement!  You run, tongue flying, chasing the fog, circling trees, and generally having a great time, until you suddenly feel a feeling that you are being watched...? Squinting, you can make out a small figure not too far away from where you stand.  This particular figure, you have to admit, is quite ominous.  The sound of deep, heavy breathing makes your fur stand on end.  You could approach this...whatever it is, or, you could just as easily turn tail and put as much distance between you and the figure as possible as quickly as possible.\n")
            
            print("What will you do?\n 1: Approach the 'whatever it is' \n 2: RUN!")
            
            answer = readLine()!
            while (Int(answer) != 1 && Int(answer) != 2) {
                print("Enter '1' or '2' to choose a choice, \(name) the pomeranian.")
                answer = readLine()!
            }
            if Int(answer) == 1 {
                print("You step forward, not too quickly, of course.  The musky smell of wolf pervades the air.  After getting a closer look at the figure, you make out the face of a wolf.  This, plus the wolf smell, heavily implies that the figure was a wolf.  (You are rocking these logical puzzles!)  You feel dramatically relieved knowing that your new companion is also a pupper, despite the bared teeth, sharp claws, and intimidating size.  But, upon meeting any new companion, certain choices must be made to create a bond and establish a mutual goodwill between acquaintences, also known as a good first impression.\n")
                wolfStage()
            } else if Int(answer) == 2 {
                print("In the blink of an eye, you hightail it deeper into the forest without looking back!  After what seems like a reasonably good amount of time has passed, you paws at the closest tree, sweating.  Except you remember that dogs don't sweat, so you pant instead.  \n")
                print("Press 'Enter' to continue")
                var _ = readLine()
                runStage()
            }
        }
        
        func wolfStage() {
            
            print("What will you do?\n 1: Bark \n 2: Stare \n 3: Spin")
            
            answer = readLine()!
            while (Int(answer) != 1 && Int(answer) != 2 && Int(answer) != 3) {
                print("Enter '1' '2' or '3' to choose a choice, \(name) the pomeranian.")
                answer = readLine()!
            }
            if Int(answer) == 1 {
                print("You decide to communicate your goodwill using the universal language of dogs such as yourself.  You muster all your vocal might and release a puny squeak.  Although you are sure your cuteness levels are off the charts, the following silence causes you to wonder if the wolf has taken kindly to your request.  No, wait! You hear a low growl... Perhaps the wolf will respond, accepting your companionship?  Yes!  He is opening his mouth now, and you are ready to complete the bonding process.  Wow, this wolf has a very big mouth...\n")
                print("...you made a delicious snack.\n")
                print("GAME OVER")
                
            } else if Int(answer) == 2 {
                print("In as much dignity as possible for a pomeranian, you stare deeply into the eyes of the wolf who, in turn, stares back.  Two doggos are sitting in the woods, five feet apart because they are predator and prey, yet a powerful connection is made.  Two doggos, as similar as they are different, put their differences aside so that true friendship can grow.  You understand the struggle of the wolf, how his frightening reputation precedes him wherever he goes, even though he is pure of heart, with no intention of harm.  You understand this, and share in the wolf's remorse.  The wolf is thankful, and offers you assistance in your quest.\n")
                
                print("Press 'Enter' to continue")
                var _ = readLine()
                
                print("The wolf informs you that there is a special treasure to the west.  It is hidden deep in a cave, and although the journey will be treacherous, the treasure is said to be valuable beyond belief!  This is definitely valuable information.  \n")
                
                print("But alas, this is as far as the game goes, for now at least.")
                
            } else if Int(answer) == 3 {
                print("\(name) used SPIN!  You twirl around and around, chasing your tail in a dizzying effort to show the wolf just how fun and enjoyable you are!  The wolf is unamused.  You spin harder and faster, becoming a white blur.  The wolf is still unamused.  You spin as hard as you can!  Leaves dance in the air as the wind picks up.  Branches begin to creak and birds flee from their perches.  The tornadog lasts a moment longer, but eventually you collapse onto the ground, the world tilting and bobbing.  The wolf is now impressed.  Clearly you possess the abilities necessary for a brave and adventurous doge.  Knowing this, the wolf decides that you may be worth something after all!\n")
                
                print("Press 'Enter' to continue")
                var _ = readLine()
                
                print("The wolf informs you that there is a special treasure to the west.  It is hidden deep in a cave, and although the journey will be treacherous, the treasure is said to be valuable beyond belief!  This is definitely valuable information.  \n")

                print("But alas, this is as far as the game goes, for now at least.")
            }
            
            
        }

        func runStage() {
            
            print("You have arrived at a swamp.  A stinky, mushy swamp.  The water is dark and clouded, no telling what's in there!  But wait-- what's that?  You see a gleaming treasure chest amidst the water, resting on a conveniently placed piece of dry ground!  What could it hold?  Gems?  Gold?  Kibble?  You must find out!  But how is a tiny, fluffy pup such as yourself going to reach it?  You look around.  You see a plank leading over the water and to the chest.  Very convenient.  But also there is a small boat, perfectly dog-sized.  Convenient as well...  \n")
            
            print("What will you do?\n 1: Use boat \n 2: Walk across plank \n 3: Jump in swamp")
            
            answer = readLine()!
            while (Int(answer) != 1 && Int(answer) != 2 && Int(answer) != 3) {
                print("Enter '1' '2' or '3' to choose a choice, \(name) the pomeranian.")
                answer = readLine()!
            }
            if Int(answer) == 1 {
                print("The boat may be dog-sized, but let's hope it doesn't capsize!  You trot over to the boat, the mud squishing beneath your tiny paws.  This boat has definitely seen some use.  There are several holes, but they have thankfully been patched with FLEX TAPE.  With no further observations, you bound into the boat.  It rocks for a bit, but eventually steadies, ready and willing to carry you across the marshy waters!\n")
                
                print("But alas, this is as far as the game goes, for now at least.")
                
            } else if Int(answer) == 2 {
                print("Duh, the plank is obviously correct the answer!  Simplicity and convenience at its finest!  You hop onto the plank without hesitation.  It's a little unsteady, but that's surely not a problem.  Time to quench that burning curiousity and take a peek in that chest! (And maybe, if the treasure is valuable enough, take some with you.)  You are halfway across the swamp by now.  Suddenly, you notice just how thin this plank is, and just how menacing the water is.  This isn't good.  You begin to quiver anxiously, but that in no way helps the whole unsteadiness problem.  This definitely isn't good!  You get more anxious, but it only makes things worse!  At this rate, The best place to be is off the plank, quickly!  You pick up the speed, eyeing the chest, but, due to all the unsteadiness, anxiety, and quickened pace, you lose you balance!  You last see the treasure chest, taunting you atop its earthy perch, before the water swallows you.\n")
                print("And then some jerky fish swallowed you, literally.\n")
                
                print("GAME OVER")
                
            } else if Int(answer) == 3 {
                print("YOLO!  You plunge headfirst into the water like an idiot because you probably did not understand from your previous observations that the water is DARK and CLOUDED, both implying a very bad situation.  Any hopes of finding anything other than dark, cold swampiness are dashed as the water covers you face, shutting of the air and...well, I won't go into detail.\n")
                print("You drowned.\n")
                
                print("GAME OVER")
            }
            
            
        }
        
        firstStage()
        secondStage()
    }
}
