//
//  ViewController.swift
//  Swift_Networking
//
//  Created by Tosh  on 2/14/20.
//  Copyright © 2020 Tosh . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = Service(baseUrl: "https://restcountries.eu/rest/v2/")
        
        service.getAllCountryNames(endpoint: "all")
    }


}

