import UIKit


// Task 1: Understanding Data Types

enum Gender{
    
    case male
    case female
    case other
}

struct Car {
    var make:String
    var model:String
    var year:Int
    
}

class Person {
    var name:String
    var age:Int
    var gender:String
    var car:String
    
    init(name:String , age:Int,gender:String,car:String){
        
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
    
    
    func printdata(object:Person) {
        
        print("name:\(object.name)")
        print("age:\(object.age)")
        print("gender:\(object.gender)")
        print("car:\(object.car)")
    }
    
}



let car1 = Car(make: "ford", model: "five hundred", year: 2009)

let car2 = Car(make: "chrysler", model: "300c", year: 2012)






var khaled = Person(name: "khaled", age: 30, gender: "male", car: "Toyota")

var mohammed = Person(name: "mohammed", age: 25, gender: "male", car: "ford")



print("struct")
print(car1)
print(car2)

print("--------------")

print("class")
khaled.printdata(object: khaled)
print("--------------")
mohammed.printdata(object: mohammed)




//Task 2: Memory Management
class BankAccount{
    
    var balance : Int
    
    init(balance:Int){
        
        self.balance = balance
    }
    
    
    
    func deposit( money: Int){
        balance += money
        
    }
    
    func withdraw (money: Int){
        
        if balance > money {
            
            balance -= money
        }else{
            
            false
        }
        
    }
    
    func printdata(object:BankAccount) {
        
        print("balance\("")\(balance)")
       
    }
    
    
}



var client = BankAccount(balance: 0)
client.deposit(money: 100)
print(client.balance)


var client2 = client
client2.withdraw(money: 60)
print(client.balance)



//Extra Point 1: Error Handling
enum LoginError:Error {
    case invalidUsername
    case invalidPassword
    
}

func login(username:String,password:String)throws->String{
    
    if username == "ASDKL" {
        
        throw LoginError.invalidUsername

        
    }else if username == "<>$# " {
        throw LoginError.invalidUsername

        
    }else{
        
        print("ok")
    }
    
    
    if password.count < 5 {
        throw LoginError.invalidPassword
    }
    
    if password == "12345" {
        throw LoginError.invalidPassword
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
            return "Good"
        } else {
            return "Excellent"
        }
}
    
    
    
   
    



var password1 = "1"
var user = "sff"

do{
    
    let diya = try login( username: user, password: password1)
    
}catch LoginError.invalidPassword{
    
    print("password invaild")
}catch LoginError.invalidUsername{
    
    print(" username invaild")

}

//Extra Point 2: Optional Handling
struct Book {
    
    var title : String?
    var author : String?
    var publicationyear : Int?
    
    
    func printinformation(){
        if let title = title {
            
            print("title is\(title)")
        }else{
            
            print("empty")
            
        }
        
        
        if let author = author {
            
            print("author is\(author)")
        }else{
            
            print("unknown")
            
        }
        
        if let publicationyear = publicationyear {
            
            print("publicationyear is\(publicationyear)")
        }else{
            
            print("unknown")
            
        }
        
        
        
        
        
    }
    
}





