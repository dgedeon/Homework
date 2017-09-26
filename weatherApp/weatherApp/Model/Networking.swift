//
//  Networking.swift
//  weatherApp
//
//  Created by Mac on 9/24/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import Foundation

class Networking:Codable{
    
    static func callWeatherApi(zipcode: String, completion:@escaping(list?,Error?)->()){
        //let City:list
        
        print("starting callWeatherApi")
    
        //let APPID:String = "988ed83f1d06htt9c2ad59b8855b4c4072b"
        let key:String = "920dc46cfa74315669f859b5763a3972"
        //let user:String = "Default"
        let address = "https://api.openweathermap.org/data/2.5/forecast?zip=\(zipcode),us&appid=\(key)"
        print(address)

        
        guard let website = URL(string: address) else{return print("bad url")}
        
        let session = URLSession.shared
        let task = session.dataTask(with: website) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse else{return}
            guard httpResponse.statusCode == 200 else{return print(httpResponse.statusCode)}
            //print(httpResponse.statusCode)
            guard let data = data else{return print("bad data")}
            do{
                let decoder = JSONDecoder()
               
                let Weather = try decoder.decode(list.self, from: data)
                completion(Weather,nil)
                
            }catch let error{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}
