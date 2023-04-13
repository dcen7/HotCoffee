//
//  OrdersTableViewController.swift
//  HotCoffee
//
//  Created by Deniz Cengiz on 4/10/23.
//

import Foundation
import UIKit

class OrderTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateOrders()
    }
    
    private func populateOrders() {
       guard let coffeeOrdersURL = URL(string: "https://warp-wiry-rugby.glitch.me/orders") else {
            fatalError("URL is incorrect")
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservice().load(resource: resource) { result in
            switch result {
            case .success(let orders):
                print(orders)
                print("HERE")
            case .failure(let error):
                print(error)
            }
        }
        
        
    }
}
