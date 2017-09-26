//
//  weatherViewController.swift
//  weatherApp
//
//  Created by Mac on 9/25/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import Foundation
import UIKit
class weatherViewController:UIViewController{
    
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var minTemp: UILabel!
    @IBOutlet weak var maxTemp: UILabel!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var temp2: UILabel!
    @IBOutlet weak var minTemp2: UILabel!
    @IBOutlet weak var maxTemp2: UILabel!
    @IBOutlet weak var date2: UILabel!
    
    @IBOutlet weak var temp3: UILabel!
    @IBOutlet weak var minTemp3: UILabel!
    @IBOutlet weak var maxTemp3: UILabel!
    @IBOutlet weak var date3: UILabel!
    
    @IBOutlet weak var temp4: UILabel!
    @IBOutlet weak var minTemp4: UILabel!
    @IBOutlet weak var maxTemp4: UILabel!
    @IBOutlet weak var date4: UILabel!
    
    @IBOutlet weak var temp5: UILabel!
    @IBOutlet weak var minTemp5: UILabel!
    @IBOutlet weak var maxTemp5: UILabel!
    @IBOutlet weak var date5: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Networking.callWeatherApi(zipcode: myFirstSingleton.shared.zipcode){[weak self] (value, error) in
            guard error == nil else{return}
            guard let x = value else{return}
            DispatchQueue.main.async{
                self?.city.text = "City: " + x.city.name
                self?.country.text = "Country: " + x.city.country
                self?.temp.text = "Temperature: " + String(describing:x.list[0].main.temp - 273.15)
                self?.minTemp.text = "Low: " + String(describing:x.list[0].main.temp_min - 273.15)
                self?.maxTemp.text = "High: " +  String(describing:x.list[0].main.temp_max - 273.15)
                self?.date.text = "Date: " + x.list[0].dt_txt
                
                self?.temp2.text = String(describing:x.list[1].main.temp - 273.15)
                self?.minTemp2.text = String(describing:x.list[1].main.temp_min - 273.15)
                self?.maxTemp2.text = String(describing:x.list[1].main.temp_max - 273.15)
                self?.date2.text = x.list[1].dt_txt
                
                self?.temp3.text = String(describing:x.list[2].main.temp - 273.15)
                self?.minTemp3.text = String(describing:x.list[2].main.temp_min - 273.15)
                self?.maxTemp3.text = String(describing:x.list[2].main.temp_max - 273.15)
                self?.date3.text = x.list[2].dt_txt
                
                self?.temp4.text = String(describing:x.list[3].main.temp - 273.15)
                self?.minTemp4.text = String(describing:x.list[3].main.temp_min - 273.15)
                self?.maxTemp4.text = String(describing:x.list[3].main.temp_max - 273.15)
                self?.date4.text = x.list[3].dt_txt
                
                self?.temp5.text = String(describing:x.list[4].main.temp - 273.15)
                self?.minTemp5.text = String(describing:x.list[4].main.temp_min - 273.15)
                self?.maxTemp5.text = String(describing:x.list[4].main.temp_max - 273.15)
                self?.date5.text = x.list[4].dt_txt
                
            }
            
            
            
            
            
        }
        //Networking.callWeatherApi(zipcode: )
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
