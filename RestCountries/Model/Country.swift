//
//  Country.swift
//  RestCountries
//
//  Created by Артур Олехно on 16/11/2023.
//

import Foundation

struct Name:Codable{
    let common,official:String?
}

struct Flags: Codable {
    let png: String
}

struct Country:Codable{
    let name:Name
    let flags: Flags
}
