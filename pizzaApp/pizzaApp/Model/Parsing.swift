//
//  Parsing.swift
//  PizzaApp
//
//  Created by Mac on 9/21/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import Foundation


class Parsing:Codable{
    
    
    static func parseData(completion:@escaping([String]?,Error?)->()){
        
        guard let path = Bundle.main.path(forResource: "assignment", ofType: "json") else{return}
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let pizza = try decoder.decode([Pizza].self, from: data)
                let a = Parsing.parseTop20(pizza)
                let y = Parsing.replaceParen(Array: a)
                completion(y,nil)
                
                
            }catch let error{
                print(error)
            }
        }catch{
            print(error)
        }
        
        //return Za
    }
    
    static func parseDataTop50(completion:@escaping([String]?,Error?)->()){
        
        guard let path = Bundle.main.path(forResource: "assignment", ofType: "json") else{return}
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let pizza = try decoder.decode([Pizza].self, from: data)
                let a = Parsing.parseTop50(pizza)
                let y = Parsing.replaceParen(Array: a)
                completion(y,nil)
                
                
            }catch let error{
                print(error)
            }
        }catch{
            print(error)
        }
        
        //return Za
    }
    
    static func parseDataTop100(completion:@escaping([String]?,Error?)->()){
        
        guard let path = Bundle.main.path(forResource: "assignment", ofType: "json") else{return}
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let pizza = try decoder.decode([Pizza].self, from: data)
                let a = Parsing.parseTop100(pizza)
                let y = Parsing.replaceParen(Array: a)
                completion(y,nil)
                
                
            }catch let error{
                print(error)
            }
        }catch{
            print(error)
        }
        
        //return Za
    }
    
    
    
    static func parseTop20(_ objects:[Pizza])->ArraySlice<String>{
        
        let toppingArray = objects.map{$0.toppings.sorted()}//Array of Toppings
        let setArray = NSCountedSet(array: toppingArray)//Set of toppings
        let objectCount = setArray.map{setArray.count(for: $0)}//Counts of sets
        let z = zip(setArray, objectCount)//Tupples (Object, Count)
        let order = z.sorted{$0.1 > $1.1}//Sorted Tupple
        let n = order.map{String(describing:$0.0)}
        let x = n[0...19]
        //let y = x.map{$0 as String}
        
        return x
    }
    
    static func parseTop50(_ objects:[Pizza])->ArraySlice<String>{
        
        let toppingArray = objects.map{$0.toppings.sorted()}//Array of Toppings
        let setArray = NSCountedSet(array: toppingArray)//Set of toppings
        let objectCount = setArray.map{setArray.count(for: $0)}//Counts of sets
        let z = zip(setArray, objectCount)//Tupples (Object, Count)
        let order = z.sorted{$0.1 > $1.1}//Sorted Tupple
        let n = order.map{String(describing:$0.0)}
        let x = n[0...49]
        //let y = x.map{$0 as String}
        
        return x
    }
    
    static func parseTop100(_ objects:[Pizza])->ArraySlice<String>{
        
        let toppingArray = objects.map{$0.toppings.sorted()}//Array of Toppings
        let setArray = NSCountedSet(array: toppingArray)//Set of toppings
        let objectCount = setArray.map{setArray.count(for: $0)}//Counts of sets
        let z = zip(setArray, objectCount)//Tupples (Object, Count)
        let order = z.sorted{$0.1 > $1.1}//Sorted Tupple
        let n = order.map{String(describing:$0.0)}
        let x = n[0...99]
        //let y = x.map{$0 as String}
        
        return x
    }
    
    static func replaceParen(Array:ArraySlice<String>)->[String]{
        
        
        let b = Array.map{$0.replacingOccurrences(of: "(", with: "")}
        let c = b.map{$0.replacingOccurrences(of: ")", with: "")}
        let d = c.map{$0.replacingOccurrences(of: "\n", with: "")}
        let a = d.map{$0.replacingOccurrences(of: "   ", with: "")}
        
        
        return a
        
    }
    
    /*static func getToppings()->String{
        var top:String = ""
        guard let path = Bundle.main.path(forResource: "assignment", ofType: "json") else{return ""}
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let pizza = try decoder.decode([Pizza].self, from: data)
            let toppings = pizza.map{$0.toppings}
            let k = toppings.map{String(describing: $0)}
            let p = k.joined(separator: " ")
            top = p
        }catch let error{
            print(error)
        }
        return top
    }
 */
    
}

