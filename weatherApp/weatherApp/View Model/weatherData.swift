//
//  weatherData.swift
//  weatherApp
//
//  Created by Mac on 9/24/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import Foundation

struct list:Codable{
    let list:[weatherData]
    let city:city
}
struct weatherData:Codable{
    let main:main
    let dt_txt:String
    let weather:[weather]
}
struct main:Codable{
    let temp:Float
    let temp_max:Float
    let temp_min:Float
}
struct city:Codable{
    let country:String
    let name:String
}
struct weather:Codable{
    let description:String
}
