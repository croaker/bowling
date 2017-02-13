# The Bowling Game Kata

This is a ruby implementation of [Uncle Bob’s bowling game kata](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata).

## The Game

A bowling game consists of 10 frames. In each frame the player is allowed up to two rolls to knock down 10 pins. Depending on the number of pins knocked down and the number of rolls required there are three different outcomes:

- An open frame is a frame where the player knocked down less than ten pins. The score is equal to the number of pins knocked down.
- A spare is a frame where the player finishes the second roll with all pins knocked down. The score of the spare is 10 plus the pins knocked down with the player’s next throw.
- A strike is a frame where the player knocks down all 10 pins with the first roll. The score is 10 plus the player’s next two rolls.

Due to the spare and strike rules the 10th frame is a special case where the player is allowed to make the additional rolls required to determine the final score. In case of a spare or strike the player has 3 rolls in this frame.

## Requirements

Write some code that keeps track of the score of a bowling game. It should support two operations:

- roll(pins) is called each time a player rolls the ball; Pins is the number of pins knocked down.
- score() is called at the end of the game and returns the score of the game

## Motivation

I really enjoy doing this kata because it has just the right amount of complexity and it’s very easy to over design or miss refactoring opportunities.

For example one might be tempted to quickly extract a frame class to take over some of the responsibilities. However by doing so the complexity is increased by a large margin and you pay a much higher price than necessary. On the other hand, completely missing frames makes things more difficult as well.

Ultimately this kata taught me something about how to convert requirements into a design with less effort and to sharpen my sense for whether a design is good or bad.

