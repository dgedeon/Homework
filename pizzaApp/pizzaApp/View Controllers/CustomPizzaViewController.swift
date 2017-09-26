//
//  customPizza.swift
//  pizzaApp
//
//  Created by Mac on 9/24/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import Foundation
import UIKit
import CoreData


class CustomPizzaViewController:UIViewController{
    
    
    var toppings:[String] = []
    @IBOutlet weak var pepperroni: UIButton!
    @IBOutlet weak var bacon: UIButton!
    @IBOutlet weak var mozzarellaCheese: UIButton!
    @IBOutlet weak var ham: UIButton!
    @IBOutlet weak var chicken: UIButton!
    @IBOutlet weak var sausage: UIButton!
    @IBOutlet weak var hotPeppers: UIButton!
    @IBOutlet weak var onions: UIButton!
    @IBOutlet weak var mushrooms: UIButton!
    @IBOutlet weak var cheese: UIButton!
    @IBOutlet weak var topping: UILabel!
    
   
    @IBAction func buyPizza(_ sender: Any) {
        self.toppings = []
        self.topping.text = toppings.joined()
    }
    
    
    
    var count_p:Int = 0
    var count_b:Int = 0
    var count_m:Int = 0
    var count_h:Int = 0
    var count_c:Int = 0
    var count_s:Int = 0
    var count_hp:Int = 0
    var count_o:Int = 0
    var count_mu:Int = 0
    var count_cheese:Int = 0
    /*let container = (UIApplication.shared.delegate as! AppDelegate).persistentContainer
    let context:NSManagedObjectContext = container.viewContext
    
    */
    deinit{self.navigationController?.setToolbarHidden(true, animated: true)}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setToolbarHidden(false, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func addTopping(_ sender: AnyObject){
        if sender === pepperroni{
            if self.toppings.count < 10{
            self.toppings.append("Pepperroni")
            self.topping.text = self.toppings.joined(separator: ",")
            count_p += 1
                if count_p > 3{
                //User Alert
            }
        }
    }
        else if sender === bacon{
            if self.toppings.count < 10{
                self.toppings.append("Bacon")
                self.topping.text = self.toppings.joined(separator: ",")
                count_b += 1
                if count_b > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        else if sender === mozzarellaCheese{
            if self.toppings.count < 10{
                self.toppings.append("Mozzarella Cheese")
                self.topping.text = self.toppings.joined(separator: ",")
                count_m += 1
                if count_m > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        else if sender === ham{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_h += 1
                if count_h > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        
        else if sender === chicken{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_c += 1
                if count_c > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        
        else if sender === sausage{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_s += 1
                if count_s > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        
        else if sender === hotPeppers{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_hp += 1
                if count_hp > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        
        else if sender === onions{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_o += 1
                if count_o > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
        else if sender === cheese{
            if self.toppings.count < 10{
                self.toppings.append("Ham")
                self.topping.text = self.toppings.joined(separator: ",")
                count_cheese += 1
                if count_cheese > 3{
                    //User Alert
                }
            }
            else{
                //User Alert to many toppings
            }
        }
    
    
    
    
}

}
