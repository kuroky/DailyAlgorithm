import UIKit

// 1 2 3 4 5 6 7 8 9
func confusingNumber(_ N: Int) -> Bool {
    
    let string = String(N)
    var str = ""
    for (_, item) in string.enumerated() {
        if item == "2" ||
            item == "3" ||
            item == "4" ||
            item == "5" ||
            item == "7" {
            return false
        }
              
        if item == "0" {
            str.insert("0", at: str.startIndex)
        }
        
        if item == "1" {
            str.insert("1", at: str.startIndex)
        }
        
        if item == "6" {
            str.insert("9", at: str.startIndex)
        }
        
        if item == "8" {
            str.insert("8", at: str.startIndex)
        }
        
        if item == "9" {
            str.insert("6", at: str.startIndex)
        }
        
        print(str)
    }
    
    if str == string {
        return false
    }
    return true
}

print(confusingNumber(916))
