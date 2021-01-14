# iOSTestAPP

I. Add arithmetic operators (add, subtract, multiply, divide) to make the following expressions true. You can use any parentheses you’d like. 3 1 3 9 = 12

```
Ans: (9/3)*(3+1)
```

II. Write a function/method utilizing Swift to determine whether two strings are anagrams or not (examples of anagrams: debit card/bad credit, punishments/nine thumps, etc.)
 
```
func checkForAnagram(firstStr: String, secondStr: String) -> Bool {
     return firstStr.lowercased().sorted() == secondStr.lowercased().sorted()
}
```

III. Write a method in Swift to generate the nth Fibonacci number (1, 1, 2, 3, 5, 8, 13, 21, 34) 

A. recursive approach

```
func fibRecursive(_ element:Int) -> Int {
    if element <= 1 {
        return element
    }
    return (fibRecursive(element - 1) + fibRecursive(element - 2))
}
```
 
B. iterative approach

```
func fibIterative(_ elemeent: Int) -> Int {
        var fibans = [0,1]
        if(elemeent > fibans.count) {
            for i in stride(from: fibans.count, to: elemeent + 1, by: 1) {
                let firstEle = fibans[i - 1]
                let secondEle = fibans[i - 2]
                let eleme = firstEle + secondEle
                fibans.append(eleme)
            }
        }
        return fibans[elemeent]
}
```

 
IV. Which architecture would you use for the required task below? Why? 


Ans: I will use VIPER design pattern as it's easy to maintain highly scalable code. The VIPER architecture is based on the single responsibility principle (S.O.L.I.D.) which leads us to the theory of a clean architecture.
Clean Architecture divides an app’s logical structure into distinct layers of responsibility.
Using this architecture one can easily test at the boundaries between each layers. One feature, one module. For each module VIPER has five (sometimes four) different classes with distinct roles. VIPER makes the code easier to isolate dependencies and to test the interactions at the boundaries between layers:

V. Create a currency converter by utilizing data from the fixer.io API.
The currency converter must include a currency selector at the top to use as the base currency and display updated currency rates based on the selected base currency. When a user taps on a currency, a calculation view should appear with the selected currency and base currency. Only the base currency field should be editable.

Ans: Please find code in Q5 folder and you can run it using xcode 12.1 and minimum iOS version is 9.0

>NOTE: Fixer.io don't work if we want to change base currency using free plan so I used https://frankfurter.app/latest for getting currency data.

```{"success":false,"error":{"code":105,"type":"base_currency_access_restricted"}}```

|             Main Page         |         Currency Selection Page          | 
|---------------------------------|------------------------------|
|![Demo](https://github.com/mwaqasbhati/iOSTestAPP/blob/main/Screenshots/MainPage.png)|![Demo](https://github.com/mwaqasbhati/iOSTestAPP/blob/main/Screenshots/CurrencyListPage.png)|
