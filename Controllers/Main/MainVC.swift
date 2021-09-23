//
//  ViewController.swift
//  AnimatedTableView
//
//  Created by Dmitry Onishchuk on 23.09.2021.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openTableAction(_ sender: UIButton) {
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
    }
}

