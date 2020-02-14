//
//  Service.swift
//  Swift_Networking
//
//  Created by Tosh  on 2/14/20.
//  Copyright © 2020 Tosh . All rights reserved.
//

import Foundation
import Alamofire

class Service {
    
    //https://restcountries.eu/rest/v2
    fileprivate var baseUrl = ""
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    //Mark:- getAllCountryNames
    func getAllCountryNames(endpoint: String)  {
        AF.request(self.baseUrl + endpoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{
            (responseData) in
            guard let data = responseData.data else {return}
            
            do{
                let countries = try JSONDecoder().decode([Country].self, from: data)
                print(countries)
            }catch{
                print("Error Decoding == \(error.localizedDescription)")
            }
        }
        
    }
}
