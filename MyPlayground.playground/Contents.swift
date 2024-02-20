import UIKit

func countVietnameseLetters(inputStr: String) -> Int {
    let vietnameseLetters: Set<String> = ["aw", "aa", "dd", "ee", "oo", "ow", "w"]
    var count = 0
    var i = 0
    
    while i < inputStr.count {
        if i < inputStr.count - 1 {
            let startIndex = inputStr.index(inputStr.startIndex, offsetBy: i)
            let endIndex = inputStr.index(inputStr.startIndex, offsetBy: i + 2)
            let substring = inputStr[startIndex..<endIndex]
            if vietnameseLetters.contains(String(substring)) {
                count += 1
                i += 2
                continue
            }
        }
        
        let index = inputStr.index(inputStr.startIndex, offsetBy: i)
        let char = String(inputStr[index])
        if vietnameseLetters.contains(char) {
            count += 1
        }
        i += 1
    }
    
    return count
}


let inputStr = "hfdawhwhcoomdd"
print(countVietnameseLetters(inputStr: inputStr)) // Output: 4

