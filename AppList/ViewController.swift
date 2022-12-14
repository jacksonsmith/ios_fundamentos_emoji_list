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
        mainTitle.text = "Agora fui delegado, e tambรฉm vou mostrar uns emojis ๐๐พ๐๐คน๐ผโโ๏ธ"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tableView = segue.destination as? TableViewController
        
        tableView?.firstviewController = self

    }
}

