// I will create a basic calculator here just to test my understanding of swift
//Update, Type safety of this is so insane!

print("---\tCalculator-------\n")
print("Enter the first number: ")
let num1 = readLine()
print("Enter the second number: ")
let num2 = readLine()
if num1 == nil  || num2 == nil {
    print("One of the numbers if is empty")
}
print("\nEnter the option you want to use\n1. Add\n2.",
      "Division\n3. Multiplication\n4. Subtraction.")
let operat: String? = readLine()
if let operation = Int(operat ?? ""){
    if let num1 = Double(num1 ?? ""), let num2 = Double(num2 ?? ""){
        switch operation {
        case 1: // Addition
            print("Result: \(num1 + num2)")
        case 2: // Division
            print("Result: \(num1 / num2)")
        case 3: // Multiplication
            print("Result: \(num1 * num2)")
        case 4: // Subtraction
            print("Result: \(num1 / num2)")
        default:
            print("There was an error trying to Perform operation!")            
        }
    }
    else{
        print("There was error Converting your numbers into strings")
    }
}
else{
    print("There was an error parsing the Operation you chose!")
}