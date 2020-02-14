//
//  Countries.swift
//  Swift_Networking
//
//  Created by Tosh  on 2/14/20.
//  Copyright © 2020 Tosh . All rights reserved.
//

import Foundation

struct Country: Decodable {
    var name: String?
    var capital: String?
    var countryCode: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case capital = "capital"
        case countryCode = "alpha3code"
    }
}
