//
//  ViewController.swift
//  weatherApp
//
//  Created by Mac on 9/24/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var toWeather: UIButton!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func getZipCode(_ sender: AnyObject){
        if sender === toWeather{
            guard let a = zipCode.text else{return}
            myFirstSingleton.shared.zipcode = a
            
        }
    }
    


}

