//
//  main.swift
//  NumGuesser
//
//  Created by Tom Shiflet on 8/30/19.
//  Copyright © 2019 Tom Shiflet. All rights reserved.
//

import Foundation

var quitGame:Bool=false

while !quitGame
{
    var roundOver:Bool=false
    var high:Int=100
    var low:Int=1
    var guess:Int=0
    
    
    while !roundOver
    {
        guess=(high+low)/2
        print("My guess is: \(guess)")
        print("Is this too [h]igh, too [l]ow, or [c]orrect?")
        let input=readLine()!
        switch input
        {
            case "h":
                
                high=guess
            case "l":
                low=guess
            
            case "c":
                print("Hurray! I got it!")
                roundOver=true
            default:
                print("Invalid input")
            
        } // switch input

    } // while the round isn't over
    print("Do you want to play again? [y]/[n]")
    let playAgain=readLine()!
    if playAgain=="n"
    {
        quitGame=true
    } // if
    
} // while the game is running
