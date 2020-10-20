//
//  CountriesTableViewController.swift
//  pasaporte
//
//  Created by KMMX on 20/10/20.
//
import UIKit

class CountriesTableViewController: UITableViewController {
    var countries=["España","Japon","Canada","Inglaterra","Italia","Francia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        //Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as UITableViewCell
        var country = countries[indexPath.row]
        cell.textLabel?.text = country
        return cell
    }
}
