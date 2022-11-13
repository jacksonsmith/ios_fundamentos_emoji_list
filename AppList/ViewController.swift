//
//  ViewController.swift
//  AppList
//
//  Created by Jackson on 06/07/22.
//

import UIKit

protocol ViewControllerDelegate {
    func changeTitle()
}

class ViewController: UIViewController, ViewControllerDelegate {
    @IBOutlet var mainTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func changeTitle() {
        mainTitle.text = "Agora fui delegado, e também vou mostrar uns emojis 🙋🏾🎃🤹🏼‍♀️"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tableView = segue.destination as? TableViewController
        
        tableView?.firstviewController = self

    }
}

