// Recursive function to calculate factorial
func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    return n * factorial(n - 1)
}

// Input from the user
print("Enter a number: ", terminator: "")
if let input = readLine(), let number = Int(input) {
    let result = factorial(number)
    print("Factorial of \(number) is \(result)")
} else {
    print("Invalid input")
}
