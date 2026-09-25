import Foundation

let num = Int.random(in: 1...6) // Generate a random number between 1 and 6
print("Guess a number between 1 and 6: ")
var guess: Int? = nil
while guess != num {
    if let newInput = readLine(), let newGuess = Int(newInput) {
        if newGuess == num {
            break
        } else if newGuess < 1 || newGuess > 6 {
            print("Number out of range. Try again.")
        } else if newGuess < num { // if the guess is lower than the number it prompts the user to try again but also tells the user that the guess is too low
            print("Too low. Try again.")
        } else if newGuess > num { // if the guess is higher than the number it prompts the user to try again but also tells the user that the guess is too high
            print("Too high. Try again.")
        } else {
            print("Invalid input. Please enter a number between 1 and 6.")
        }
    } else {
        print("Invalid input. Please enter a number between 1 and 6.")
        }
    print("Try again: ")
}
print("Congratulations! You guessed the number.")
