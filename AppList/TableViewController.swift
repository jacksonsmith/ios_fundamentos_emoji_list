//
//  TableViewController.swift
//  AppList
//
//  Created by Jackson on 06/07/22.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    var firstviewController: ViewController?
    
    let emotes: [String] = ["😆", "😂", "😁", "😊", "😉", "😚", "😎", "🐶", "😇", "😝"]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell positon: \(indexPath.row) taped")
        firstviewController?.changeTitle()
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.backgroundColor = .white
        cell.textLabel?.text = "\(indexPath.row): \(emotes[indexPath.row])"
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emotes.count
    }
}

