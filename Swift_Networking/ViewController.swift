//
//  ViewController.swift
//  Swift_Networking
//
//  Created by Tosh  on 2/14/20.
//  Copyright © 2020 Tosh . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCountries: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblCountries.dataSource = self
        let service = Service(baseUrl: "https://restcountries.eu/rest/v2/")
        
        service.getAllCountryNames(endpoint: "all")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "countrycell")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "countrycell")
        }
        cell?.textLabel?.text = "country name + (country code)"
        cell?.detailTextLabel?.text = "capital"
        return cell!
    }
}

