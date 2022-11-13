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
    //delegate
    
    let emotes: [String] = ["😆", "😂", "😁", "😊", "😉", "😚", "😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝","😎", "🐶", "😇", "😝"]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell positon: \(indexPath.row) taped")
        firstviewController?.changeTitle()
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("section: \(indexPath.section) row: \(indexPath.row)")
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emotes[indexPath.row]
        
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}

